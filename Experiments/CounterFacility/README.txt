// Database Tuning: Principles, Experimentation and Design
// @ Dennis Shasha, Philippe Bonnet - 2001

Tool:		expCounterFacility
Schema:		accounts, (counter)
Indexes:	none

System Counter facility
Scripts:       run1.sql (insertions using the counter facility provided by
			the system)
Conf:	       SystemCounter.conf - batch script

Ad-hoc Counter
Scripts:	run2.sql (select counter value)
		run3.sql (insert with new counter value)
		run4.sql (update counter value)
Conf:		TransactionCounter.conf - batch script

GOAL
----

It is very frequent to associate a counter to records in a table. A
possibility is to generate counter values using an integer value
stored in a table. Intuitively, with this ad-hoc solution, the counter
table becomes a hotspot. Alternatively, it is possible to use a
counter facility provided by the DBMS. The goal of this experiment is
to study how much of a hotspot the counter table becomes and how
efficient the system counter facility really is.

The ad-hoc solution consists in the following transactions:
(1) read and update the counter value
(2) insert a record using the counter value

Such a transaction is not supported by exptool. You should thus use a
modified version of exptool, called expCounterFacility, that executes
these transactions. Insertions using the system counter can be
performed using exptool.

Trace the throughput for different number of concurrent jobs
performing the insertions. (Increasing the number of concurrent jobs,
increases concurrent accesses on the counter.)

Delete from the accounts table across runs.


