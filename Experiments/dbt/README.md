## Overview: dbt ##

*dbt* is installed in the tuning VM. It provides a collection of functionalities for running database tuning experiments:
- generate unique id (for an experiment)
- vm/dbms setup info
- create database (by default tuning)
- drop database (by default tuning)
- create schema
- generate data
- load data
- get vm snapshot
- create index
- drop index
- enforce cold
- enforce warm (for a given table)
- run experiment
- start traces
- stop traces


## Synopsis ##

dbt `[ option ]` `[ parameter ]`

### options ###
id

info

snapshot

trace start 

trace stop

db2 start

db2 stop

db2 createdb

db2 run

db2 dropdb

db2 load

gentable

warm 

cold



## Examples ##

### LogIO ###

Here is makefile target on the client (assuming the input files are in the logio directory and the output is stored in a data directory), which runs the logio experiment on the TuningVM using dbt
'''
logio: 
    tar cjvf logio.tar.gz logio
    scp logio.tar.gz $USER@$HOST:/home/tuning/Upload
    ssh $USER@$HOST << EOF
        export LOGIODIR = 'dbt id db2 logio'
        touch expid.txt
        mkdir LOGIODIR; cd LOGIODIR; mdir in; mkdir out
        mv ~/Upload/logio.tar.gz in/
        tar xjvf logio.tar.gz -C in/
        dbt info > out/info.txt
        dbt db2 start
        dbt db2 createdb
        dbt snapshot > out/before.txt
        for (i=0 ; i<3 ; i++); do
            dbt db2 run in/init.sql
            dbt trace start in/logio.d out/trace.txt
            dbt db2 run in/logio.sql > out/run$i.txt;
            dbt trace stop
            dbt db2 run in/cleanup.sql 
        done
        dbt snapshot > out/after.txt
        dbt db2 dropdb
        dbt db2 stop
        cd ..; tar cvjf logio_out.tar.gz $LOGIODIR; mv logio_out.tar.gz ~/Download
    EOF
    scp $USER@$HOST:/home/tuning/Download/logio.out.tar.gz .
    tar xjvf logio_out.tar.gz -C tmp/
    mkdir $(cat tmp/expid.txt)
    mv tmp data/$(cat tmp/expid.txt)/
'''
### Indexing ###




     


