create table accounts(number 	integer not null primary key, branchnum integer not null, balance float not null)

create index c on accounts(number) cluster;