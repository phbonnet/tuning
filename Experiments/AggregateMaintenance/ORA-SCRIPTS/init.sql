create table orders
(
	ordernum	integer,
	itemnum		integer,
	quantity	integer,
	purchaser	varchar2(10),
	vendor		varchar2(10)
);

create table store
(
	vendor		varchar2(10),
	name		varchar2(10)
);


create table item
(
	itemnum		integer primary key,
	price		float
) organization index;
