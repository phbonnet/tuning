create cluster c_hundreds
(
   	hundreds 	number(8)
) PCTFREE 0;

create table employees
(
	ssnum		integer not null, 
	name 		varchar(20) not null, 
	latit		number(8),
	longit		number(8),
	hundreds1	number(8),
	hundreds2	number(8)
) cluster c_hundreds(hundreds2);

