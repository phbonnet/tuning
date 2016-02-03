-- SQL*Loader control file
-- Command line arguments must include userid, control (control file name) and data (data file name).
-- The data file name overloads the default file name given in the INFILE 

OPTIONS (ERRORS = 150)

load data 
infile "partsupp.tbl"
into table PARTSUPP append
fields terminated by '|' 
(
	PS_PARTKEY,
	PS_SUPPKEY,
	PS_AVAILQTY,
	PS_SUPPLYCOST,
	PS_COMMENT varchar(400)
)



