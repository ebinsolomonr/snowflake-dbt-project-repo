{{config(materialized='table')}}

with customer_orders as (
  select c.customerid, c.firstname, count(o.orderid) as Order_nos
  from customers c
  join orders o on c.customerid = o.customerid
  group by c.customerid, c.firstname
)

select * from customer_orders
order by Order_nos desc