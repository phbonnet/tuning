create table LINEITEM
(
	L_ORDERKEY 	number(10),
	L_PARTKEY	number(10),
	L_SUPPKEY	number(10),
	L_LINENUMBER	number(10),
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
	L_COMMENT	varchar2(44),
	CONSTRAINT L_PKEY PRIMARY KEY (L_ORDERKEY, L_PARTKEY, L_SUPPKEY)
);


create table REGION
(
	R_REGIONKEY 	number(10)	 PRIMARY KEY,
	R_NAME		char(25),
	R_COMMENT	varchar2(152)
);



create table NATION
(
	N_NATIONKEY	number(10)	PRIMARY KEY,
	N_NAME		char(25),
	N_REGIONKEY	number(10),
	N_COMMENT	varchar2(152),
	FOREIGN KEY (N_REGIONKEY) REFERENCES REGION(R_REGIONKEY)
);

create table SUPPLIER
(
	S_SUPPKEY	number(10)	PRIMARY KEY,
	S_NAME		varchar2(25),
	S_ADDRESS	varchar2(40),
	S_NATIONKEY	number(10),
	S_PHONE		varchar2(15),
	S_ACCTBAL	float,
	S_COMMENT	varchar2(101),
	FOREIGN KEY (S_NATIONKEY) REFERENCES NATION(N_NATIONKEY)
);

create table LINEITEMDENORMALIZED
(
	L_ORDERKEY 	number(10),
	L_PARTKEY	number(10),
	L_SUPPKEY	number(10),
	L_LINENUMBER	number(10),
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
	L_COMMENT	varchar2(44),
	L_REGIONNAME	char(25),
	CONSTRAINT L_KEY PRIMARY KEY (L_ORDERKEY, L_PARTKEY, L_SUPPKEY)
);