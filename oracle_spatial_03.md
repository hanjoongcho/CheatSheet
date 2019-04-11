# Oracle Spatial 예제-03
SDO_UTIL Package 주요기능 예제

## 01. SDO_UTIL.GETVERTICES
2D 좌표 X, Y 또는 3D 좌표 X, Y, Z 추출하기
ID 값은 공간 객체의 Vertex 수만큼 증가함  
Point는 1...  
LineString은 1, 2, 3, 4, 5, 1, 2, 3, 4, 5, 6...
```
SELECT G.ID, G.X, G.Y, G.Z
  FROM B1_SIGN_POINT A, TABLE (SDO_UTIL.GETVERTICES (A.GEOMETRY)) G;  
```

| ID | X | Y | Z |  
|---|---|---|---|  
|1| 127.341244 | 37.654332 | 90  |  
