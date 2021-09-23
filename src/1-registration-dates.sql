select
  extract(day from dt_reg) as day,
  count(*) count_of_contracts
from
  contracts
where
  dt_reg > current_date - interval '4' day -- last 5 days
group by
  extract(day from dt_reg)
order by 
  extract(day from dt_reg) desc;

