create table accounts
(
	numb 		integer primary key not null, 
	branchnum 	integer not null, 
	balance 	float not null
)
ORGANIZATION INDEX PCTTHRESHOLD 20
INITRANS 50
MAXTRANS 100;