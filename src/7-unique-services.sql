select
  s.v_name
from
  service s
inner join 
  services ss using (id_service)
inner join 
  contracts cs using(id_contract_inst)
inner join 
  departments ds using(id_department)
group by s.v_name
having 
  count(ss.*) = 1;
