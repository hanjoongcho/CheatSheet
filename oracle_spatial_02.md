# Oracle Spatial 예제-02
시군구경계 및 표준노드 데이터를 이용한 공간검색

## 01. 표준링크 Linestring 길이측정
'내남송길' 전체구간 길이 합산(EPSG:5179 기준)
```
SELECT ROUND(
          SUM(SDO_GEOM.SDO_LENGTH(GEOMETRY, 0.0005, 'unit=KM')),
          3
       ) || 'km' AS DISTANCE_TOTAL
  FROM MOCT_LINK_5179
  WHERE ROAD_NAME = '내남송길'
------------------------------------------------------- 결과값: 3.326km
```
'내남송길' 전체구간 길이 합산(EPSG:4326 기준)
```
SELECT ROUND(
          SUM(SDO_GEOM.SDO_LENGTH(SDO_CS.TRANSFORM(GEOMETRY, 4326), 0.0005, 'unit=KM')),
          3
       ) || 'km' AS DISTANCE_TOTAL
  FROM MOCT_LINK_5179
  WHERE ROAD_NAME = '내남송길'
------------------------------------------------------- 결과값: 3.168km
```

## 02. 시군구 Polygon 면적측정
```
SELECT ROUND(
         SDO_GEOM.SDO_AREA(GEOMETRY, 0.0005, 'unit=SQ_KM'),
         3
       ) || '㎢' AS AREA
    FROM TL_SCCO_SIG_5179
    WHERE SIG_KOR_NM = '강남구'
------------------------------------------------------- 결과값: 39.493㎢
```
## 03. 시군구 Polygon 둘레측정
```
SELECT ROUND(
         SDO_GEOM.SDO_LENGTH(GEOMETRY, 0.0005, 'unit=KM'),
         3
       ) || 'km' AS AREA
    FROM TL_SCCO_SIG_5179
    WHERE SIG_KOR_NM = '강남구'
------------------------------------------------------- 결과값: 34.246km
```
## 04. 표준링크 반경검색
표준노드 기준 반경 10M 이내에 존재하는 표준링크 Select
```
SELECT DISTINCT ROAD_NAME
  FROM MOCT_LINK_5179
 WHERE SDO_WITHIN_DISTANCE(
                    GEOMETRY,
                    (SELECT GEOMETRY FROM MOCT_NODE_5179 WHERE NODE_NAME = '태평역사거리'),
                    'distance=10 unit=M'
       ) = 'TRUE'   
------------------------------------------------------- 결과값: 수정로
-------------------------------------------------------        일반국도3호선   
```

## 05. 표준링크 거리측정
표준노드 포인트 사이의 거리계산
```
SELECT ROUND(SDO_GEOM.SDO_DISTANCE(
                             (SELECT GEOMETRY FROM MOCT_NODE_5179 WHERE NODE_NAME = '태평역사거리'),
                             (SELECT GEOMETRY FROM MOCT_NODE_5179 WHERE NODE_NAME = '야탑사거리'),
                              0.0005,
                              'unit=KM'
              )
        , 3
        ) || 'km' AS DISTANCE
  FROM DUAL
------------------------------------------------------- 결과값: 2.542km 
``` 
