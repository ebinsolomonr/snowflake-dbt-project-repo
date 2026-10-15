select 
    FO.customerid,
    C.FULL_NAME,
    SUM(FO.OrderCount) AS OrderCount,
    SUM(FO.Revenue) AS Revenue
from {{ ref('orderfact') }} as FO
join {{ref('customer_stg')}} as C
on FO.customerid = C.customerid
group by 1,2