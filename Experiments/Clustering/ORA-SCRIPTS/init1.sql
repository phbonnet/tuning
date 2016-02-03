

create table employees
(
	ssnum		integer not null, 
	name 		char(20) not null, 
	latit		number(8),
	longit		number(8),
	hundreds1	number(8),
	hundreds2	number(8),
	CONSTRAINT  pk_employees PRIMARY KEY (hundreds2, ssnum))
ORGANIZATION INDEX TABLESPACE users
PCTTHRESHOLD 20
OVERFLOW TABLESPACE users;
