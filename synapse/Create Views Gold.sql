---CREATE VIEW CALENDAR

create view gold.calendar
AS 
SELECT 
*
FROM 

    OPENROWSET(
                BULK 'https://aefstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
                FORMAT= 'PARQUET'

 )AS Query1


--CREATE VIEW CUSTOMER

create view gold.customer
as 
SELECT 
*
FROM 

    OPENROWSET(
                BULK 'https://aefstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Customer/',
                FORMAT= 'PARQUET'

 )as Query1
 
 ---CREATE VIEW PRODUCT CATEGORIES

create view gold.productcategories
as 
SELECT 
*
FROM 

    OPENROWSET(
                BULK 'https://aefstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Product_Categories/',
                FORMAT= 'PARQUET'

 )as Query1


--CREATE VIEW PRODUCT RETURNS

create view gold.productreturns
as 
SELECT 
*
FROM 

    OPENROWSET(
                BULK 'https://aefstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Product_Returns/',
                FORMAT= 'PARQUET'

 )as Query1
 
 ---CREATE VIEW PRODUCT SUBCATEGORIES

create view gold.productsubcategories
As
SELECT 
*
FROM 

    OPENROWSET(
                BULK 'https://aefstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Product_SubCategories/',
                FORMAT= 'PARQUET'

 )as Query1


--CREATE VIEW PRODUCTS

create view gold.products
as 
SELECT 
*
FROM 

    OPENROWSET(
                BULK 'https://aefstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Products/',
                FORMAT= 'PARQUET'

 )as Query1

 ---CREATE VIEW SALES

create view gold.sales
as 
SELECT 
*
FROM 

    OPENROWSET(
                BULK 'https://aefstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Sales/',
                FORMAT= 'PARQUET'

 )as Query1


--CREATE VIEW TERRITORIES

create view gold.territories
as 
SELECT 
*
FROM 

    OPENROWSET(
                BULK 'https://aefstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Territories/',
                FORMAT= 'PARQUET'

 )as Query1
 

 