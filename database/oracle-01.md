# ...

```
SELECT EMPLOYEE_ID,
       FIRST_NAME,
       LAST_NAME
FROM   (SELECT EMPLOYEE_ID,
               FIRST_NAME,
               LAST_NAME,
               CEIL(ROWNUM / 3) AS PAGE
        FROM   (SELECT EMPLOYEE_ID,
                       FIRST_NAME,
                       LAST_NAME
                FROM   EMPLOYEES
                ORDER  BY EMPLOYEE_ID DESC))A
WHERE  A.PAGE = 1; 
```
