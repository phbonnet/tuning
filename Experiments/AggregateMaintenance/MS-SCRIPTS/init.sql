create table orders
(
	ordernum	integer,
	itemnum		integer,
	quantity	integer,
	purchaser	varchar(10),
	vendor		varchar(10)
);

create table store
(
	vendor		varchar(10),
	name		varchar(10)
);


create table item
(
	itemnum		integer,
	price		float
);

create table vendorOutstanding
(
	vendor		varchar(10),
	amount		float
);


create table storeOutstanding
(
	store		varchar(10),
	amount		float
);

