# Oracle Table Space 확장하기
## 참고링크
https://stackoverflow.com/questions/3452902/how-to-increase-the-size-of-a-table-in-oracle
https://stackoverflow.com/questions/7672126/find-out-free-space-on-tablespace/7672154

## 01. 현재 사용량 확인
```
COLUMN "Tablespace" FORMAT A13
COLUMN "Used MB"    FORMAT 99,999,999
COLUMN "Free MB"    FORMAT 99,999,999
COLUMN "Total MB"   FORMAT 99,999,999
SELECT
   FS.TABLESPACE_NAME                          "Tablespace",
   (DF.TOTALSPACE - FS.FREESPACE)              "Used MB",
   FS.FREESPACE                                "Free MB",
   DF.TOTALSPACE                               "Total MB",
   ROUND(100 * (FS.FREESPACE / DF.TOTALSPACE)) "Pct. Free"
FROM
   (SELECT
      TABLESPACE_NAME,
      ROUND(SUM(BYTES) / 1048576) TOTALSPACE
   FROM
      DBA_DATA_FILES
   GROUP BY
      TABLESPACE_NAME
   ) DF,
   (SELECT
      TABLESPACE_NAME,
      ROUND(SUM(BYTES) / 1048576) FREESPACE
   FROM
      DBA_FREE_SPACE
   GROUP BY
      TABLESPACE_NAME
   ) FS
WHERE
   DF.TABLESPACE_NAME = FS.TABLESPACE_NAME;
```   
## 02. DATAFILE path 확인
```
SELECT * FROM DBA_DATA_FILES
```

## 03. Table Space 확장
```
ALTER DATABASE
DATAFILE 'D:\ORACLEXE11G\APP\ORACLE\ORADATA\XE\SYSTEM.DBF'
RESIZE 1200M;
```
