bulk insert orders
from "C:\tuning\tuning\experiments\order.data"
with 
(
 TABLOCK,
 FIELDTERMINATOR = ',',
 ROWTERMINATOR   = '\n'
);


bulk insert item
from "C:\tuning\tuning\experiments\item.data"
with 
(
 TABLOCK,
 FIELDTERMINATOR = ',',
 ROWTERMINATOR   = '\n'
);


bulk insert store
from "C:\tuning\tuning\experiments\vendor.data"
with 
(
 TABLOCK,
 FIELDTERMINATOR = ',',
 ROWTERMINATOR   = '\n'
);

