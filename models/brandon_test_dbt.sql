{{config(
	schema = "JAFFLE_SHOP",
	materialized = "table"
)}}
WITH select_step1 as (
  SELECT
    "RAW_CUSTOMERS"."ID" AS "ID",
    "RAW_CUSTOMERS"."FIRST_NAME" AS "FIRST_NAME",
    "RAW_CUSTOMERS"."LAST_NAME" AS "LAST_NAME"
  FROM
    "STAGE"."RAW_CUSTOMERS"
)
SELECT
  *
FROM
  select_step1
LIMIT
  100