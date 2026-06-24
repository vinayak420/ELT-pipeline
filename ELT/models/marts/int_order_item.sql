select 

line_items.order_item_key as order_item_key,
line_items.part_key as part_key,
line_items.line_number as line_number,
line_items.extended_price as extended_price,
orders.order_key as order_key,
orders.customer_key as customer_key,
orders.order_date as order_date,
{{ discounted_price('line_items.extended_price', 'line_items.discount') }} as item_discount
 from 
{{ ref('tpch_orders') }} orders
inner join 
{{ ref('tpch_lineitems') }} line_items
on 
orders.order_key = line_items.order_key