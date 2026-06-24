select orders.*,
order_summary.gross_item_sale_amt,
order_summary.item_discount_amt
from 
{{ref("tpch_orders")}} orders
inner join 
{{ref("int_order_item_summary")}} order_summary 
on 
orders.order_key = order_summary.order_key