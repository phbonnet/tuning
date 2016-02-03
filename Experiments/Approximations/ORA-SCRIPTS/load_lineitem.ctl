-- SQL*Loader control file
-- Command line arguments must include userid, control (control file name) and data (data file name).
-- The data file name overloads the default file name given in the INFILE 



load data 
infile "lineitem.tbl"
into table LINEITEM append
fields terminated by '|' 
(
	L_ORDERKEY,
	L_PARTKEY,
	L_SUPPKEY,
	L_LINENUMBER,
	L_QUANTITY,
	L_EXTENDEDPRICE,
	L_DISCOUNT,
	L_TAX,
	L_RETURNFLAG,
	L_LINESTATUS,
	L_SHIPDATE DATE "YYYY-MM-DD",
	L_COMMITDATE DATE "YYYY-MM-DD",
	L_RECEIPTDATE DATE "YYYY-MM-DD",
	L_SHIPINSTRUCT,
	L_SHIPMODE,
	L_COMMENT
)



