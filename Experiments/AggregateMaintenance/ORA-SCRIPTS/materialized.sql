create materialized view vendorOutstanding
build immediate
refresh complete
enable query rewrite
as
select orders.vendor, sum(orders.quantity*item.price)
from orders,item
where orders.itemnum = item.itemnum
group by orders.vendor;

create materialized view storeOutstanding
build immediate
refresh complete
enable query rewrite
as
select select store.name, sum(orders.quantity*item.price)
from orders,item, store
where orders.itemnum = item.itemnum
  and orders.vendor = store.vendor
group by store.name;
