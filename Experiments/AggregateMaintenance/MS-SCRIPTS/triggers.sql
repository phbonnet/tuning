create trigger updateVendorOutstanding
on orders for insert
as
update vendorOutstanding
set amount = 
	(select vendorOutstanding.amount+sum(inserted.quantity*item.price)
	from inserted,item
	where inserted.itemnum = item.itemnum
	)
where vendor = (select vendor from inserted)
;


create trigger updateStoreOutstanding
on orders for insert
as
update storeOutstanding
set amount = 
	(select storeOutstanding.amount+sum(inserted.quantity*item.price)
	 from inserted,item
	 where inserted.itemnum = item.itemnum
	)
where store = (select store.name from inserted, store 
		where inserted.vendor = store.vendor)
;

