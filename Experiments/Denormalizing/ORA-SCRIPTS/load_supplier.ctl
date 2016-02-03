-- SQL*Loader control file
-- Command line arguments must include userid, control (control file name) and data (data file name).
-- The data file name overloads the default file name given in the INFILE 



load data 
infile "supplier.tbl"
into table SUPPLIER append
fields terminated by '|' 
(
	S_SUPPKEY,
	S_NAME,
	S_ADDRESS,
	S_NATIONKEY,
	S_PHONE,
	S_ACCTBAL,
	S_COMMENT
)



