bulk insert employees
from "C:\tuning\experiments\employees.data"
with 
(
 TABLOCK,
 FIELDTERMINATOR = ',',
 ROWTERMINATOR   = '\n'
);

