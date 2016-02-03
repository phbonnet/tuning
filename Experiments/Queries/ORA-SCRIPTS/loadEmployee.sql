-- SQL*Loader control file
-- Command line arguments must include userid, control (control file name) and data (data file name).
-- The data file name overloads the default file name given in the INFILE 

OPTIONS (ERRORS = 150)

load data 
infile "employee.data"
into table employee append
fields terminated by ',' 
(
	ssnum, 
	name, 
	dept,
	salary,
	numfriends
)

