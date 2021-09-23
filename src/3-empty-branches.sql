select
  distinct v_name
from
  departments d
inner join
  contracts c using (id_department)
where
  c.v_status != 'A';

