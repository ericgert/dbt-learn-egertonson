Select 
  orderid as order_id
  , id as customer_id
  , amount / 100 as amount

from 
  {{ source('stripe', 'payment')}}

where 
  status = 'success'