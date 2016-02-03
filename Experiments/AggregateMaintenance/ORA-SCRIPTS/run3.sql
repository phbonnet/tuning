select store.name, sum(orders.quantity*item.price)
from orders,item, store
where orders.itemnum = item.itemnum
  and orders.vendor = store.vendor
group by store.name;