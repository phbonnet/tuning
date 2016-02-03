select orders.vendor, sum(orders.quantity*item.price)
from orders,item
where orders.itemnum = item.itemnum
group by orders.vendor;
