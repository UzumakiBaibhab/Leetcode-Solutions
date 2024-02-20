Select products.product_name, sum(orders.unit) as unit
from products join orders on Products.product_id=orders.product_id
where orders.order_date like '2020-02%' 
group by products.product_name
having sum(orders.unit)>=100
