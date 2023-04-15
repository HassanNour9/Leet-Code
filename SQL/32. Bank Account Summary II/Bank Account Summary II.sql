select name,sum(amount) as balance from Users U join Transactions T on U.account=T.account
group by name
having sum(amount)>10000;
