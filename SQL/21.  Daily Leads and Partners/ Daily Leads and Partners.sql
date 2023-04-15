select date_id,make_name, count(Distinct lead_id) as unique_leads,Count(Distinct partner_id) as unique_partners
from DailySales 
group by make_name,date_id
order by make_name desc,date_id desc;