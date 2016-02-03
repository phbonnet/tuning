// Database Tuning: Principles, Experimentation and Design
// @ Dennis Shasha, Philippe Bonnet - 2001

Tool:		exptool
Schema:		lineitem, part, partsupp, supplier, nation, region
		approxlineitem, approxpart, approxpartsupp, 
		approxsupplier, approxnation, approxregion		

Scripts:	run1.sql - aggregate query on lineitem
		run1b.sql - aggregate query on approxlineitem
		run2.sql - aggregate 6 way join on base relations
		run2b.sql - aggregate 6 way join on approximate relations
	
Conf:		single scripts statement (queries - run{1-1b-2-2b}.sql)


GOAL
---	

The goal of this experiment is to illustrate the potential benefit of
sample relations to compute approximate results.

The schema contains 6 relations of the TPC-H schema (the base
relations).  For each relation, an approximated relation is created
that stores a sample.

Load the base relations using the load.cmd script.  Take a k% sample
of the fact relations (lineitem and partsupp) that you insert into
their sample counterparts. Propagate the sample by inserting into 
sample relations approxXXX the result of the join between each sample 
fact table and base relation XXX along the foreign key dependencies. 
For instance:
 
insert into approxcustomer
select distinct C_CUSTKEY,
        C_NAME  ,
        C_ADDRESS,
        C_NATIONKEY,
        C_PHONE ,
        C_ACCTBAL,
        C_MKTSEGMENT,
        C_COMMENT
from customer, approxorders
where o_custkey = c_custkey;

Use Queries.conf to run an aggregate query on lineitem (to check the
accuracy of the answer with the sample you tool). Use Queries.conf to
run an aggregate over a 6 way join.
