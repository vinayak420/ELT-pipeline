select 
order_key, 
sum(extended_price) as gross_item_sale_amt,
sum(item_discount) as item_discount_amt,
from 
{{ref('int_order_item')}}
group by order_key