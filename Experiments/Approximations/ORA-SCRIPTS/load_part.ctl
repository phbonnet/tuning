-- SQL*Loader control file
-- Command line arguments must include userid, control (control file name) and data (data file name).
-- The data file name overloads the default file name given in the INFILE 



load data 
infile "part.tbl"
into table part append
fields terminated by '|' 
(
	P_PARTKEY, 
	P_NAME, 
	P_MFGR, 
	P_BRAND, 
	P_TYPE, 
	P_SIZE,
	P_CONTAINER, 
	P_RETAILPRICE, 
	P_COMMENT
)



