create nonclustered index i1 on employee (ssnum);
create clustered index i2 on employee (name);
create nonclustered index i3 on employee (dept);

create nonclustered index i4 on student (ssnum);
create clustered index i5 on student (name);

create clustered index i6 on techdept (dept);
