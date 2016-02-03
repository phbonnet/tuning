
bulk insert employee
from "C:\tuning\tuning\experiments\employeeQueries.data"
with 
(
 TABLOCK,
 FIELDTERMINATOR = ',',
 ROWTERMINATOR   = '\n'
);

bulk insert student
from "C:\tuning\tuning\experiments\studentQueries.data"
with 
(
 TABLOCK,
 FIELDTERMINATOR = ',',
 ROWTERMINATOR   = '\n'
);

bulk insert techdept
from "C:\tuning\tuning\experiments\techdeptQueries.data"
with 
(
 TABLOCK,
 FIELDTERMINATOR = ',',
 ROWTERMINATOR   = '\n'
);
