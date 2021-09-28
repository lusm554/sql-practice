-- probably would be better use here rank, but i'm not sure.
select
  t.v_name
from
  services ss
inner join tariff_plan t
  using (id_tariff_plan)
group by t.v_name
order by count(id_contract_inst) desc;

