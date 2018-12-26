# CQL Filter 테스트하기
sample layer group인 tasmania layer를 이용한 CQL 테스트하기

## geoserver layer preview에서 tasmania layer를 OpenLayers viewer로 열기

## 테스트에 사용할 LINESTRING WKT Layer를 Browser Console에서 추가
```
// 다음 스크립트를 실행하면 흰색 Layer가 추가됨
var wkt = 'LINESTRING (146.77734375000003 -42.9840087890625, 147.50244140625003 -42.7423095703125, 147.16186523437503 -42.1380615234375)';
var format = new ol.format.WKT();
var feature = format.readFeature(wkt);
var vector = new ol.layer.Vector({
    source: new ol.source.Vector({
        features: [feature]
    }),
    style: new ol.style.Style({
        stroke: new ol.style.Stroke({
            color: '#FFFFFF',
            width: 2
        }),
    }),

});
map.addLayer(vector);
```  
## 좌상단에 Toggle options toolbar 아이콘을 클릭해서 CQL필터 활성화

## INTERSECTS 테스트
INTERSECTS(the_geom, LINESTRING (146.77734375000003 -42.9840087890625, 147.50244140625003 -42.7423095703125, 147.16186523437503 -42.1380615234375))

## DISJOINT 테스트
DISJOINT(the_geom, LINESTRING (146.77734375000003 -42.9840087890625, 147.50244140625003 -42.7423095703125, 147.16186523437503 -42.1380615234375))

## DWITHIN 테스트
DWITHIN(the_geom, LINESTRING (146.77734375000003 -42.9840087890625, 147.50244140625003 -42.7423095703125, 147.16186523437503 -42.1380615234375), 100, meters)
