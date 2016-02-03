create table employee
(
	ssnum		integer not null, 
	name 		varchar(20) not null, 
	dept		varchar(50),
	salary		float,
	numfriends	integer,
	constraint p1 primary key (ssnum)
)
organization index;

create table student
(
	ssnum		integer not null, 
	name 		varchar(20) not null, 
	course		varchar(30),
	grade		integer,
	constraint p2 primary key (ssnum)
)
organization index;


create table techdept
(
	dept		varchar(50),
	manager		integer,
	location	varchar(20),
	constraint p3 primary key (dept)	
)
organization index;

create table temp
( 	
	bigsalary 	float,
	dept		varchar(50)
);