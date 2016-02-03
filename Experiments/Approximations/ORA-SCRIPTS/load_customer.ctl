-- SQL*Loader control file
-- Command line arguments must include userid, control (control file name) and data (data file name).
-- The data file name overloads the default file name given in the INFILE 



load data 
infile "customer.tbl"
into table CUSTOMER append
fields terminated by '|' 
(
	C_CUSTKEY,
	C_NAME,
	C_ADDRESS,
	C_NATIONKEY,
	C_PHONE,
	C_ACCTBAL,
	C_MKTSEGMENT,
	C_COMMENT
)



