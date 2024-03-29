
----QUE:1----

   SELECT FIRST_NAME FROM  SALES.CUSTOMERS ORDER BY FIRST_NAME DESC 

----QUE:2---
  SELECT FIRST_NAME,LAST_NAME,CITY FROM SALES.CUSTOMERS  ORDER BY CITY,FIRST_NAME

----QUE:3----
  SELECT TOP(3)PRODUCT_NAME,LIST_PRICE FROM PRODUCTION.PRODUCTS ORDER BY LIST_PRICE DESC

----QUE:4----
    
	SELECT LIST_PRICE,PRODUCT_NAME,MODEL_YEAR FROM PRODUCTION.PRODUCTS WHERE LIST_PRICE>300 AND MODEL_YEAR=2018

----QUE:5----
SELECT LIST_PRICE,PRODUCT_NAME,MODEL_YEAR FROM PRODUCTION.PRODUCTS WHERE LIST_PRICE>3000 OR MODEL_YEAR=2018

---QUE:6----
SELECT PRODUCT_NAME,LIST_PRICE FROM PRODUCTION.PRODUCTS WHERE LIST_PRICE BETWEEN 1899 AND 1999.99

---QUE:7----
SELECT LIST_PRICE,PRODUCT_NAME FROM PRODUCTION.PRODUCTS WHERE LIST_PRICE IN(299.99,466.99,489.99)

---QUE:8---

SELECT LAST_NAME FROM SALES.CUSTOMERS WHERE LAST_NAME LIKE '[ABC]%'

---QUE:9----

SELECT FIRST_NAME FROM SALES.CUSTOMERS WHERE FIRST_NAME NOT LIKE 'A%'

---QUE:10----

SELECT STATE,CITY ,COUNT(CUSTOMER_ID) AS CUSTOMER_COUNT FROM SALES.CUSTOMERS GROUP BY CITY,STATE

---QUE:11----
SELECT CUSTOMER_ID, COUNT( ORDER_ID)  AS 'ORDER_COUNT' FROM SALES.ORDERS GROUP BY CUSTOMER_ID,YEAR(ORDER_DATE)

----QUE:12----

SELECT CATEGORY_ID, MAX(LIST_PRICE) AS MAX_LISTPRICE,MIN(LIST_PRICE) AS MIN_LISTPRICE
 FROM PRODUCTION.PRODUCTS GROUP BY category_id HAVING MAX(LIST_PRICE)>4000 OR MIN(LIST_PRICE)<500