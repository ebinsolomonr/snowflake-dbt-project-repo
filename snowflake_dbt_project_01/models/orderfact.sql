select 
    o.orderid,
    o.orderdate,
    o.customerid,
    o.employeeid,
    o.storeid,
    o.statuscd,
    o.statusdesc,
    count (distinct oi.orderid) as OrderCount,
    sum(oi.totalprice) as Revenue
 from {{ref('order_stg')}} as o
 join {{ref('orderitem_stg')}} as oi
 on o.orderid = oi.orderid
group by 1,2,3,4,5,6,7