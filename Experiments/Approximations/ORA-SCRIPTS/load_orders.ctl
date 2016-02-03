-- SQL*Loader control file
-- Command line arguments must include userid, control (control file name) and data (data file name).
-- The data file name overloads the default file name given in the INFILE 



load data 
infile "order.tbl"
into table ORDERS append
fields terminated by '|' 
(
	O_ORDERKEY,
	O_CUSTKEY,
	O_ORDERSTATUS,
	O_TOTALPRICE,
	O_ORDERDATE DATE "YYYY-MM-DD",
	O_ORDERPRIORITY,
	O_CLERK,
	O_SHIPPRIORITY,
	O_COMMENT
)



