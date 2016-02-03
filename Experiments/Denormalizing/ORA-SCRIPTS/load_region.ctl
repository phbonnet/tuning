-- SQL*Loader control file
-- Command line arguments must include userid, control (control file name) and data (data file name).
-- The data file name overloads the default file name given in the INFILE 



load data 
infile "region.tbl"
into table REGION insert
fields terminated by '|' 
(
	R_REGIONKEY,
	R_NAME,
	R_COMMENT
)



