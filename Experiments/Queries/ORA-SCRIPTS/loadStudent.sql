-- SQL*Loader control file
-- Command line arguments must include userid, control (control file name) and data (data file name).
-- The data file name overloads the default file name given in the INFILE 

OPTIONS (ERRORS = 150)

load data 
infile "student.data"
into table student append
fields terminated by ',' 
(
	ssnum, 
	name, 
	course,
	grade
)

