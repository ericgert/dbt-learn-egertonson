Select 
  orderid as order_id
  , id as customer_id
  , amount / 100 as amount

from 
  raw.stripe.payment

where 
  status = 'success'