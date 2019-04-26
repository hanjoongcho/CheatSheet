# Oracle Spatial 예제-01
Oracle Spatial를 이용하여 사용자정의 좌표계 추가, 좌표변환, 거리측정, 면적측정하기

## 01. 사용자 정의 좌표계 추가 
### 참고링크  
https://epsg.io/5179 (Oracle Spatial WKT를 별도로 제공하지 않으므로 직접 만들던가 아래 링크를 참고)  
https://nicebury.tistory.com/134  
```
-- 01. SRID 확인
SELECT * FROM MDSYS.CS_SRS WHERE SRID = 5179

-- 02. 없으면 생성
INSERT INTO MDSYS.CS_SRS
            (CS_NAME, SRID, AUTH_SRID, AUTH_NAME,
             WKTEXT
            )
     VALUES ('Korea_2000_Korea_Unified_Coordinate_System', 5179, 5179, NULL,
             'PROJCS["Korea 2000 Korea Unified Coordinate System",GEOGCS["ITRF2000",DATUM["IERS Terrestrial Reference Frame 2000",SPHEROID["GRS 1980",6378137.0,298.257222101]],PRIMEM["Greenwich",0.0],UNIT["Decimal Degree",0.017453293]],PROJECTION["Transverse Mercator"],PARAMETER["False_Easting",1000000.0],PARAMETER["False_Northing",2000000.0],PARAMETER["Central_Meridian",127.5],PARAMETER["Scale_Factor",0.9996],PARAMETER["Latitude_Of_Origin",38.0],UNIT["Meter",1.0]]'
            );
            
-- 03. 좌표계 검증            
SELECT SDO_CS.VALIDATE_WKT(5179) FROM DUAL
```

## 02. Point to Point 거리 측정하기
### 참고링크  
https://docs.oracle.com/database/121/SPATL/sdo_geom-sdo_distance.htm#SPATL1117  
ftp://ftp.bentley.com/pub/help/powerdraft_mapping/08110509en/html/powerdraftmapping/oracle_spatial.htm  
https://docs.oracle.com/cd/B10500_01/appdev.920/a96630/sdo_objrelschema.htm  
https://github.com/Gaia3D/GeepsAdminZoneService/blob/master/GeepsAdminZoneService.cfg  
### GTYPE  
GTYPE = 2001 = POINTS  
GTYPE = 2002 = LINES  
GTYPE = 2003 = POLYGONS  
```
SELECT SDO_GEOM.SDO_DISTANCE (SDO_GEOMETRY (2001, -- GTYPE
                                            4326, -- SRS 
                                            SDO_POINT_TYPE (127.54561, 
                                                            37.13213,
                                                            NULL
                                                           ),
                                            NULL,
                                            NULL
                                           ),
                              SDO_GEOMETRY (2001,
                                            4326,
                                            SDO_POINT_TYPE (128.76321,
                                                            37.90123,
                                                            NULL
                                                           ),
                                            NULL,
                                            NULL
                                           ), 0.0005
                             ) AS DISTANCE_FROM_EPSG4326
  FROM DUAL
------------------------------------------------------- 결과값: 137378.078215543
```

## 03. 좌표계 변환하고 Point to Point 거리 측정하기-1 
TRANSFORM 4326 TO 5179(GRS80타원체, UTM-K, 네이버지도에서 사용)
```
SELECT SDO_GEOM.SDO_DISTANCE (SDO_CS.TRANSFORM(SDO_GEOMETRY (2001, -- GTYPE
                                            4326, -- SRS 
                                            SDO_POINT_TYPE (127.54561, 
                                                            37.13213,
                                                            NULL
                                                           ),
                                            NULL,
                                            NULL
                                           ), 5179),
                              SDO_CS.TRANSFORM(SDO_GEOMETRY (2001,
                                            4326,
                                            SDO_POINT_TYPE (128.76321,
                                                            37.90123,
                                                            NULL
                                                           ),
                                            NULL,
                                            NULL
                                           ), 5179), 0.0005
                             ) AS DISTANCE_FROM_EPSG3857
  FROM DUAL
------------------------------------------------------- 결과값: 137330.346459608
```

## 04. 좌표계 변환하고 Point to Point 거리 측정하기-2
TRANSFORM 4326 TO 3857(메르카토르도법, 구글지도, VWorld 지도에서 사용)
```
SELECT SDO_GEOM.SDO_DISTANCE (SDO_CS.TRANSFORM(SDO_GEOMETRY (2001, -- GTYPE
                                            4326, -- SRS 
                                            SDO_POINT_TYPE (127.54561, 
                                                            37.13213,
                                                            NULL
                                                           ),
                                            NULL,
                                            NULL
                                           ), 3857),
                              SDO_CS.TRANSFORM(SDO_GEOMETRY (2001,
                                            4326,
                                            SDO_POINT_TYPE (128.76321,
                                                            37.90123,
                                                            NULL
                                                           ),
                                            NULL,
                                            NULL
                                           ), 3857), 0.0005
                             ) AS DISTANCE_FROM_EPSG3857
  FROM DUAL
------------------------------------------------------- 결과값: 173272.420495562
```

## 05. 폴리곤 면적 측정하기
```
SELECT SDO_GEOM.SDO_AREA(MDSYS.SDO_GEOMETRY(
    2003,  -- 2-dimensional polygon
    5179,
    NULL,
    MDSYS.SDO_ELEM_INFO_ARRAY(1,1003,1), -- one polygon (exterior polygon ring)
    MDSYS.SDO_ORDINATE_ARRAY(0,0, 10,0, 10,10, 0,10, 0,0)
  )
,0.0005) FROM DUAL
------------------------------------------------------- 결과값: 100
```
