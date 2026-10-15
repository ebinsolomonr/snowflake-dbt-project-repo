select orderitemid,
       orderid,
       productid,
       quantity,
       unitprice,
       (quantity * unitprice) as totalprice,
       updated_at
from DB1.L1_LANDING.ORDERITEMS