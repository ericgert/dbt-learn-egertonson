select 
  so.order_id
  ,so.customer_id
  ,sp.amount

from 
  {{ref('stg_orders')}} as so
  inner join 
  {{ref('stg_payments')}} as sp
  using(order_id)
