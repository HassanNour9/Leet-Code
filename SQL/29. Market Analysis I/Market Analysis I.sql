select U.user_id as buyer_id,U.join_date,count (order_id) as orders_in_2019
from Users U left join Orders O
on U.user_id = O.buyer_id and year(order_date)=2019
group by U.user_id,join_date;