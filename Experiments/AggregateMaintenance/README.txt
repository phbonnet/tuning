// Database Tuning: Principles, Experimentation and Design
// @ Dennis Shasha, Philippe Bonnet - 2001

Tool:		exptool
Schema:		orders, store, item
Indexes:	clustered index on orders.itemnum (not on Oracle)
		clustered index on item.itemnum

Scripts:	run1.sql (insertions - batch)
		run2.sql (total per vendor)
		run3.sql (total per store)

Data:		orders.data (1000000 records)
		store.data (10000 records)
		item.data (400000 records)
	
Conf:		Queries.conf (single statement)
		Insert.conf (batch)


GOAL
---	

Study the performance impact of aggregate maintenance. Using Microsoft
SQLServer, aggregates are materialized into additional tables and triggers
are used to maintain those tables. Using Oracle9i, materialized views
are used.

SQL Server
----------

Use the Query Analyzer to run:
- init.sql to initialize base tables and additional tables
(- triggers.sql to create the triggers)
- load.sql to load data into the base tables(; the triggers insert
data into the additional tables)
- index.sql to create the indexes

Use Insert.conf to measure the throughput for insertions
when aggregate maintenance is performed. 
Repeat the experiment with and without triggers for the cases
with or without aggregate maintenance.

Use Queries.conf to measure the throughput of queries using base
tables or additional tables (when aggregate maintenance is performed).


ORACLE 9i
---------

First, run init.sql using sqlplus to initialize the tables.
Second, run load.cmd to load the tables from a shell prompt.
Third, run materialized.sql to create the materialized views.
The experiment is now set up.

Use Insert.conf to measure the throughput for insertions
in the presence, or in the absence of materialized views.

Use Queries.conf to measure the throughput of queries when 
materialized views are present or not.