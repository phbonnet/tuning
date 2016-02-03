// Database Tuning: Principles, Experimentation and Design
// @ Dennis Shasha, Philippe Bonnet - 2001

Tool:		exptool (to be modified!!)
Schema:		accounts table
Indexes:	none

1 command (update)
Scripts:	run1.sql (update statement)
Conf:		single statement script

N commands (insert or update)
Scripts:	run2.sql (insertions)
		run3.sql (updates)
Conf:		batch script

GOAL
----

Study the influence of log file placement on throughput.

There are five variants to this experiment: 
- insertions - N commands - one large transaction
- insertions - N commands - lots of small transactions
- updates - N commands - one large transaction 
- updates - 1 command - one large transaction

In order to study insertions use the logIO-Inserts.conf configuration
file. In order to study updates use the logIO-Updates.conf
configuration file.

In order to study lots of small transactions for batch script
(insertions/updates) use the default behavior of exptool.

In order to study one large transaction for batch script
(insertions/updates) modify exptool as follows: (a) comment out the
commit command in the while loop associated to the processing of batch
scripts and (b) copy the commit command outside the loop so that it is
executed directly after all insertions are executed.

In order to study one large transaction for single statement scripts
(updates) use the default behaviour of exptool.


MEASUREMENTS
------------

Use the following configurations:
- place the log and the data on the same disk
- place log and data on different disks. (if disks have different 
  speeds) place log on fast disk then on slow disk.

Measure throughput running single statement script (update) or batch
scripts (inserts/updates), using one large transaction or lots of
small transactions.

Trace throughput for these different configurations.

Delete from the accounts table before insertions. Make sure accounts
is populated before updates.
