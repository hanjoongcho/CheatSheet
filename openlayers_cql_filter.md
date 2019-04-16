# CQL Filter 테스트하기
sample layer group인 tiger-ny layer를 이용한 CQL 테스트하기

## 01. geoserver layer preview에서 tiger-ny layer를 OpenLayers viewer로 열기
좌상단에 Toggle options toolbar 아이콘을 클릭해서 CQL필터 활성화  
<img src='screenshots/openlayers_cql_filter/01.PNG' />

## 02. 테스트에 사용할 LINESTRING WKT Layer를 Browser Console에서 추가
```
// 다음 스크립트를 실행하면 빨간색 Layer가 추가됨
var wkt = 'LINESTRING (-74.00508642196655 40.71391582489014, -74.00856256484985 40.711984634399414, -74.00311231613159 40.70803642272949, -74.00495767593384 40.70357322692871)';
var format = new ol.format.WKT();
var feature = format.readFeature(wkt);
var vector = new ol.layer.Vector({
    source: new ol.source.Vector({
        features: [feature]
    }),
    style: new ol.style.Style({
        stroke: new ol.style.Stroke({
            color: '#FF0000',
            width: 2
        }),
    }),

});
map.addLayer(vector);
```  
<img src='screenshots/openlayers_cql_filter/02.PNG' />

## 03. INTERSECTS 테스트
INTERSECTS(the_geom, LINESTRING (-74.00508642196655 40.71391582489014, -74.00856256484985 40.711984634399414, -74.00311231613159 40.70803642272949, -74.00495767593384 40.70357322692871))  
<img src='screenshots/openlayers_cql_filter/03.PNG' />

## 04. DISJOINT 테스트
DISJOINT(the_geom, LINESTRING (-74.00508642196655 40.71391582489014, -74.00856256484985 40.711984634399414, -74.00311231613159 40.70803642272949, -74.00495767593384 40.70357322692871))  
<img src='screenshots/openlayers_cql_filter/04.PNG' />

## ~05. DWITHIN 테스트~
SRS가 EPSG:4326인 경우 <span style="color:red">meters, kilometers unit을 지원하지 않는 이슈 있음</span>  
tiger-ny Layer의 경우 SRS가 EPSG:4326 이므로 TM 좌표로 reprojection하거나 distance값을 degree값으로 입력해야 함
DWITHIN(the_geom, LINESTRING (-74.00508642196655 40.71391582489014, -74.00856256484985 40.711984634399414, -74.00311231613159 40.70803642272949, -74.00495767593384 40.70357322692871), ~100, meters~)  

따라서 WFS의 경우 서비스 생성시 지정한 Declared SRS를 기준으로 쿼리를 해야 하며 WMS의 경우 Native SRS를 기준으로 쿼리를 요청해야 함  
WMS 쿼리의 경우 Declared SRS가 4326이면 meter 단위의 반경 검색을 연산할 수 없으므로 degree 단위로 변환해서 쿼리를 요청 해야 하며, WFS 쿼리의 경우 4326 좌표체계를 이용하더라도 meter단위의 반경 검색이 가능함  

**2019년 03월 12일 추가 사항**  
_WMS의 경우 srs(WMS1.3.0인경우 crs)parameter를 이용하여 좌표계 설정이 가능하고 WFS의 경우 srsName parameter를 이용하여 좌표계 설정이 가능하다고 함_

**2019년 04월 17일 추가 사항**  
_좌표계 설정이 가능하더라도 [제약](geoserver/cql_filter.md)은 있음_


## 06. 참고링크
https://docs.geoserver.org/stable/en/user/filter/ecql_reference.html
https://stackoverflow.com/questions/45333651/geoserver-dwithin-not-filtering-points-correctly
https://en.wikipedia.org/wiki/Decimal_degrees

## 07. 마우스 클릭이벤트로 WKT LINESTRING 추출하는 스크립트
```
// 01. 이벤트 등록
var clickPointArray = [];
map.on('singleclick', function(evt) {
    clickPointArray.push(evt.coordinate)
});

// 02. 지도화면에서 마우스 클릭

// 03. WKT 라인스트링 출력
var wktLineString = 'LINESTRING (';
clickPointArray.forEach(function(point, idx) {
    wktLineString += (point[0] + ' ' + point[1]);
    if (idx < clickPointArray.length - 1) wktLineString += ', ';
});
wktLineString += ')';
console.log(wktLineString);

--- 출력결과 예시 ----------------------------------------------------
LINESTRING (-8235936.650044351 4973071.283554765, -8237377.783869203 4972651.350519709, -8235631.244200673 4972021.450967125, -8237062.834092911 4970885.722985949)
```
