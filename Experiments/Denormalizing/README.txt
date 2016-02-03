// Database Tuning: Principles, Experimentation and Design
// @ Dennis Shasha, Philippe Bonnet - 2001

Tool:		exptool
Schema:		lineitem, supplier, nation, region,
		lineitemdenormalized
Indexes:	

Scripts:	run1.sql - query on normalized tables (4 way join)
		run2.sql - query on denormalized table (selection)
	
Conf:		single scripts statement


GOAL
---	
The goal of this experiment is to study the potential benefit
of denormalization.

Create tables using init.sql, load table into the base tables using
the load command, then insert data into the denormalized table using
insert_denormalized.sql.

Use Denormalizing.conf (and change the sqlFile parameter) to run the
4 way join query or the selection on the denormalized table.