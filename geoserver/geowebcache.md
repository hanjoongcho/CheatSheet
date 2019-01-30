# GeoWebCache를 이용한 타일이미지 관리


## 01. 참고링크
https://docs.geoserver.org/latest/en/user/geowebcache/config.html

## 02. GeoWebCache 캐시 디렉토리 설정
```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE web-app PUBLIC "-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN" "http://java.sun.com/dtd/web-app_2_3.dtd">
<web-app>
    <display-name>GeoServer</display-name>
    <context-param>
        <param-name>serviceStrategy</param-name>
        <param-value>PARTIAL-BUFFER2</param-value>
        <param-name>GEOWEBCACHE_CACHE_DIR</param-name>
        <param-value>C:\Dev_Suite\gwc</param-value>
```
## 03. Gridset 생성
Gridset bounds를 기준으로 Resolution이 계산됨


Openlayers에서의 Map객체 생성예시
```
// projection extent 값을  지정해야 모든 tile origin 값이 동일하게 계산됨
var projection = new ol.proj.Projection({
    code: 'EPSG:3857',
    units: 'm',
    axisOrientation: 'neu',
    global:true,
    extent:[-20037508.342789244, -20037508.342789244, 20037508.342789244, 20037508.342789244]   
});

var map = new ol.Map({
    controls : ol.control.defaults({
        attribution : false
    }).extend([ mousePositionControl ]),
    target : 'map',
    layers : [ vworldTile.base, vworldTile.midnight, vworldTile.gray, sgg, link, node ],
    view : new ol.View({
        projection : projection
    })
});
```
## 04. Layer Tile cache 설정
레벨을 기준으로 Tile cache 여부를 설정할 수 있음

## 05. Tile 자르기
Tile Caching > Tile Layers > 목록에서 작업대상 레이어의 'Seed/Truncate' 항목 클릭

## 06. 작업결과 확인

## 07. GeoWebCache에서 타일요청
/geoserver/gwc/service/wms?SERVICE=WMS&VERSION=1.1.1&...

## 08. Geoserver response header 확인
아래와 같이 geowebcahce 정보가 확인되면 정상임
```
Content-Disposition: inline; filename=geoserver-dispatch.image
Content-Length: 49694
Content-Type: image/png
Date: Wed, 30 Jan 2019 09:21:10 GMT
geowebcache-cache-result: HIT
geowebcache-crs: EPSG:3857
geowebcache-gridset: EPSG:3857
geowebcache-tile-bounds: 14245416.08546875,4383204.949375,14401959.119375002,4539747.983281251
geowebcache-tile-index: [219, 156, 8], [219, 156, 8]
Last-Modified: Wed, 30 Jan 2019 06:28:59 GMT
Server: Apache-Coyote/1.1
```
