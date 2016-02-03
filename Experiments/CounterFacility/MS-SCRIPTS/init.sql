create table accounts
(
	number 		integer not null primary key, 
	branchnum 	integer not null, 
	balance 	float not null
);

create table accountsCounter
(
	number 		integer IDENTITY primary key, 
	branchnum 	integer not null, 
	balance 	float not null
);

create table counter
(
	nextkey		integer
);

insert into counter values (1);