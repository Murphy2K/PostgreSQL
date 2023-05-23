-- ============= Composite data TYPE ==================

-- 1. List of field names with corresponding data type
-- 2. Use in a table as a 'column'
-- 3. Used in functions or procedures
-- 4. Can return multible values, its a composite data type

-- CREATE TYPE name AS (fields columns_properties)

-- Create a address composite data type

CREATE TYPE address AS (
	city VARCHAR(50),
	country VARCHATR(20)
);


CREATE TABLE companies(
	comp_id SERIAL PRIMARY KEY, 
	address address -- This will create column what ask city and country name
);


-- SELECT-ing data from table with that TYPE
SELECT address FROM companies; -- this give you all data from address column

SELECT (address).city FROM companies; -- This give you only CITY name from companies table

-- if you have many tables use like this
SELECT (companies.address).country FROM companies; -- This will give you country names from companies table. 

-- To delete/DEOP TYPE

DROP TYPE sample_type
