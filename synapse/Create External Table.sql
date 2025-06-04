---CREATE CREDENTIAL 

CREATE DATABASE SCOPED CREDENTIAL cred_aniket
WITH 
    IDENTITY = 'Managed identity'



--- CREATE EXTERNAL DAT SOURCE FOR SILVER DATA FETCH

CREATE EXTERNAL DATA SOURCE source_silver
WITH 
(
    LOCATION = 'https://aefstoragedatalake.dfs.core.windows.net/silver',
    CREDENTIAL = cred_aniket
)

---- CREATE EXTERNAL DATA SOURCE FOR GOLD LAYER

CREATE EXTERNAL DATA SOURCE source_gold
WITH 
(
    LOCATION = 'https://aefstoragedatalake.dfs.core.windows.net/gold',
    CREDENTIAL = cred_aniket
)

--- CREATE EXTERNAL FILE FORMAT 

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)


-----CREATE EXTERNAL TABLE USING CETAS 

CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * From gold.sales


SELECT * from gold.extsales