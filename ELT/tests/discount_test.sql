select * from 
{{ref('fact_orders')}}
where item_discount_amt > 0