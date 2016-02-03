// Database Tuning: Principles, Experimentation and Design
// @ Dennis Shasha, Philippe Bonnet - 2001

Tool:		expValueOfSerializability
Schema:		accounts table
Indexes:	index.sql (clustered index on accounts number)
Scripts:	run1.sql (summation query)
		run2.sql (select balance for account number X)
		run2b.sql (update balance for account number Y)
Conf:		single statement scripts

GOAL
----
The goal of this experiment is to study the trade-off between
serializable and read committed isolation level. Serializable
execution provides correctness at the cost of decreased
throughput. The questions are how incorrect is read committed? How
inefficient is serializable?

The experiment consist in running concurrently a summation query that
scans the entire accounts table (run1.sql) concurrently with
transactions that swap the balance between accounts (run2.sql +
run2b.sql).

We use a specific program expValueOfSerializability because (a) the
swap transactions need to pass values between the result of a query
(run2.sql) and a subsequent update statement (run2b.sql) and because
(b) two values have to be generated: the number of the two accounts
whose balance are swapped. 

The only difference between expValueOfSerializability and exptool is
the run phase. First, the parameter generation is different: only two
values are generated X and Y the number of the accounts whose balance
is swapped. Second, the output of the run2.sql queries (Val := select
balance from accounts where numb = X for update) are passed as
parameters to the run2b.sql update statements (update accounts set
balance = Val where numb = Y).

Note that X and Y are ordered so that they do not cause deadlocks with
the summation query.

MEASUREMENTS
------------

Vary the number of threads (nbJobs) and the isolation level
(isolation: 1 for read committed and 3 for serializable) in the
configuration file ValueOfSerializability.conf. Measure the response
time for different number of jobs for the swap transactions. Trace
throughput (nb statements/response time) as a function of the number
of concurrent jobs for the swap transactions.







