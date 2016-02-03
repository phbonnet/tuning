// Database Tuning: Principles, Experimentation and Design
// @ Dennis Shasha, Philippe Bonnet - 2001

Tool:		exptool
Schema:		employee, student, techdept
Indexes:	
Scripts:	
	
Conf:		single scripts statement (queries - run{1-7}.sql)


GOAL
---	

Study the performance impact of query rewriting techniques.

First, run init.sql using sqlplus to initialize the tables.
Second, run load.cmd to load the tables from a shell prompt.
Third, run index.sql using sqlplus to create the indexes.
The experiment is now set up.

(1) Having

The original query is run5.sql
The rewritten query is run5a.sql

Use Having.conf as a configuration file for exptool.

(2) CorrelatedSubquery

The original query is run3.sql
The rewritten query is a combination of run3a.sql and run3b.sql

Use CorrelatedSubquery.conf as a configuration file for exptool.

(3) Distinct

The original query is run1.sql
The rewritten query is run1a.sql

Use Distinct.conf as a configuration file for exptool.
