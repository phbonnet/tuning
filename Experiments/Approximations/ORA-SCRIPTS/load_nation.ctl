-- SQL*Loader control file
-- Command line arguments must include userid, control (control file name) and data (data file name).
-- The data file name overloads the default file name given in the INFILE 



load data 
infile "init1_nation.tbl"
into table NATION insert
fields terminated by '|' 
(
	N_NATIONKEY,
	N_NAME,
	N_REGIONKEY,
	N_COMMENT
)
