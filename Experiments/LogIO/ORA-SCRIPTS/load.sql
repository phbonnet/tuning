-- SQL*Loader control file
-- Command line arguments must include userid, control (control file name) and data (data file name).
-- The data file name overloads the default file name given in the INFILE 

OPTIONS (ERRORS = 150)

load data 
infile "accounts.data"
into table accounts9 append
fields terminated by ',' 
(
	numb,
	branchnum,
	balance
)

