/*
do $$
<<CUR>>
begin
  raise notice 'hello';
end CUR $$;
*/
drop function CUR();

create or replace function CUR()
  returns void
  language plpgsql
as $$
declare
  r record;
  q varchar = 'select id_service, id_tariff_plan, id_service_inst from services where id_service != 1234 and id_tariff_plan = 567';
begin
  for r in execute q for update loop
    execute 'update services set dt_stop = current_date + time ''10:00'' where id_service_inst = $1' using r.id_service_inst;
  end loop;
end $$;

select CUR();

