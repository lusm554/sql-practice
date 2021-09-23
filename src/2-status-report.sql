select
  v_status,
  case
      when v_status = 'A' then 'активен'
      when v_status = 'B' then 'заблокирован'
      when v_status = 'C' then 'расторгнут'
  end status,
  count(*)
from
  contracts
group by
  v_status
order by v_status;

