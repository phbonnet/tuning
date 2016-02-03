create table PART 
(
	P_PARTKEY 	integer	PRIMARY KEY, 
	P_NAME 		varchar2(55), 
	P_MFGR 		char(25), 
	P_BRAND 	char(10), 
	P_TYPE 		varchar2(25), 
	P_SIZE 		integer,
	P_CONTAINER 	char(10), 
	P_RETAILPRICE 	float, 
	P_COMMENT 	varchar2(23)
);


create table REGION
(
	R_REGIONKEY 	integer	 PRIMARY KEY,
	R_NAME		char(25),
	R_COMMENT	varchar2(152)
);



create table NATION
(
	N_NATIONKEY	integer	PRIMARY KEY,
	N_NAME		char(25),
	N_REGIONKEY	number(10),
	N_COMMENT	varchar2(152)
);

create table SUPPLIER
(
	S_SUPPKEY	integer	PRIMARY KEY,
	S_NAME		varchar(25),
	S_ADDRESS	varchar(40),
	S_NATIONKEY	integer,
	S_PHONE		varchar2(15),
	S_ACCTBAL	float,
	S_COMMENT	varchar(101)
);

create table PARTSUPP
(
	PS_PARTKEY	integer,
	PS_SUPPKEY	integer,
	PS_AVAILQTY	integer,
	PS_SUPPLYCOST	float,
	PS_COMMENT	varchar2(199),
);

create table CUSTOMER
(
	C_CUSTKEY	integer PRIMARY KEY,
	C_NAME		varchar2(25),
	C_ADDRESS	varchar2(40),
	C_NATIONKEY	integer,
	C_PHONE		char(15),
	C_ACCTBAL	float,
	C_MKTSEGMENT	char(10),
	C_COMMENT	varchar2(117)
);

create table ORDERS
(
	O_ORDERKEY	integer PRIMARY KEY,
	O_CUSTKEY	integer,
	O_ORDERSTATUS	char,
	O_TOTALPRICE	float,
	O_ORDERDATE	date,
	O_ORDERPRIORITY	char(15),
	O_CLERK		char(15),
	O_SHIPPRIORITY	integer,
	O_COMMENT	varchar2(79)
);

create table LINEITEM
(
	L_ORDERKEY 	integer,
	L_PARTKEY	integer,
	L_SUPPKEY	integer,
	L_LINENUMBER	integer,
	L_QUANTITY	float,
	L_EXTENDEDPRICE	float,
	L_DISCOUNT	float,
	L_TAX		float,
	L_RETURNFLAG	char(1),
	L_LINESTATUS	char(1),
	L_SHIPDATE	date,
	L_COMMITDATE	date,
	L_RECEIPTDATE	date,
	L_SHIPINSTRUCT	char(25),
	L_SHIPMODE	char(10),
	L_COMMENT	varchar2(44)
);

create table APPROXPART 
(
	P_PARTKEY 	integer	PRIMARY KEY, 
	P_NAME 		varchar2(55), 
	P_MFGR 		char(25), 
	P_BRAND 	char(10), 
	P_TYPE 		varchar2(25), 
	P_SIZE 		integer,
	P_CONTAINER 	char(10), 
	P_RETAILPRICE 	float, 
	P_COMMENT 	varchar2(23)
);


create table APPROXREGION
(
	R_REGIONKEY 	integer	 PRIMARY KEY,
	R_NAME		char(25),
	R_COMMENT	varchar(152)
);



create table APPROXNATION
(
	N_NATIONKEY	integer	PRIMARY KEY,
	N_NAME		char(25),
	N_REGIONKEY	integer,
	N_COMMENT	varchar2(152)
);

create table APPROXSUPPLIER
(
	S_SUPPKEY	integer	PRIMARY KEY,
	S_NAME		varchar2(25),
	S_ADDRESS	varchar2(40),
	S_NATIONKEY	integer,
	S_PHONE		varchar2(15),
	S_ACCTBAL	float,
	S_COMMENT	varchar2(101)
);

create table APPROXPARTSUPP
(
	PS_PARTKEY	integer,
	PS_SUPPKEY	integer,
	PS_AVAILQTY	integer,
	PS_SUPPLYCOST	float,
	PS_COMMENT	varchar2(199),
);

create table APPROXCUSTOMER
(
	C_CUSTKEY	integer PRIMARY KEY,
	C_NAME		varchar2(25),
	C_ADDRESS	varchar2(40),
	C_NATIONKEY	integer,
	C_PHONE		char(15),
	C_ACCTBAL	float,
	C_MKTSEGMENT	char(10),
	C_COMMENT	varchar2(117)
);

create table APPROXORDERS
(
	O_ORDERKEY	integer PRIMARY KEY,
	O_CUSTKEY	integer,
	O_ORDERSTATUS	char,
	O_TOTALPRICE	float,
	O_ORDERDATE	date,
	O_ORDERPRIORITY	char(15),
	O_CLERK		char(15),
	O_SHIPPRIORITY	integer,
	O_COMMENT	varchar2(79)
);

create table APPROXLINEITEM
(
	L_ORDERKEY 	integer,
	L_PARTKEY	integer,
	L_SUPPKEY	integer,
	L_LINENUMBER	integer,
	L_QUANTITY	float,
	L_EXTENDEDPRICE	float,
	L_DISCOUNT	float,
	L_TAX		float,
	L_RETURNFLAG	char(1),
	L_LINESTATUS	char(1),
	L_SHIPDATE	date,
	L_COMMITDATE	date,
	L_RECEIPTDATE	date,
	L_SHIPINSTRUCT	char(25),
	L_SHIPMODE	char(10),
	L_COMMENT	varchar2(44)
);
