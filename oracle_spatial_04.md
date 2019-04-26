# Oracle Spatial 예제-04
일반 좌표컬럼을 이용해서 공간데이터 컬럼 생성하기

## 01. 공간데이터 업데이트 하기
테이블명이 GEOM_TABLE이고 X좌표 컬럼이 X, Y좌표 컬럼이 Y인 경우 THE_GEOM 컬럼에 EPSG:3857 좌표계를 사용하는 공간데이터 만들기  
Z값은 사용하지 않으면 NULL 입력
```
UPDATE GEOM_TABLE
   SET THE_GEOM =
          SDO_GEOMETRY (2001,
                        3857,
                        SDO_POINT_TYPE (X, Y, Z),
                        NULL,
                        NULL
                       )
```

## 02. METADATA TABLE 확인  
```
SELECT *
  FROM USER_SDO_GEOM_METADATA
  WHERE TABLE_NAME = 'GEOM_TABLE';
```

## 03. METADATA 없으면 INSERT 
좌표계와 일치하는 Extent 값을 Insert
사용하는 좌표계에 해당하는 Projected bounds 값은 아래 링크에서 확인  
https://epsg.io/3857  

EPSG:3857 좌표계의 Projected bounds 값:   
minX: -20026376.39  
minY: -20048966.10  
maxX: 20026376.39  
maxY: 20048966.10  

```
INSERT INTO user_sdo_geom_metadata
     VALUES ('GEOM_TABLE', 'THE_GEOM',
             MDSYS.sdo_dim_array (MDSYS.sdo_dim_element ('X',
                                                         -20026376.39,
                                                         20026376.39,
                                                         .0005
                                                        ),
                                  MDSYS.sdo_dim_element ('Y',
                                                          -20048966.1,
                                                         20048966.1,
                                                         .0005
                                                        )
                                 ),
             3857);
```

## 04. 공간데이터 INDEX 생성
```
-- DROP INDEX SIGNPOST_SPATIAL_INDEX;
 
CREATE INDEX GEOM_TABLE_SPATIAL_INDEX ON GEOM_TABLE(THE_GEOM)
    INDEXTYPE IS MDSYS.SPATIAL_INDEX;
```

## 05. 공간쿼리 
