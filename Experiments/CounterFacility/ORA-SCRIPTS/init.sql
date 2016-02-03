create table accounts
(
	numb		integer primary key not null, 
	branchnum 	integer not null, 
	balance 	float not null
);

create table counter
(
	nextkey		integer
);

create sequence seq;