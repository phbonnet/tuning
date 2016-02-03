bulk insert accounts 
from "C:\tuning\experiments\accounts.data"
with 
(
 TABLOCK,
 FIELDTERMINATOR = ' ',
 ROWTERMINATOR   = '\n'
);

