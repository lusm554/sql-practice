create or replace function get_service(pID bigint)
  returns table (id_service bigint, v_name varchar, cnt int)
  language plpgsql
as $$
declare 
  dwr     record;
  s_query varchar; 
begin
   if pID is null then 
    s_query = 'select id_service, v_name, count(v_name) cnt from service group by (id_service) order by v_name';
  else
    s_query = 'select id_service, v_name, count(v_name) cnt from service where id_service = $1 group by (id_service)  order by v_name';
  end if;
  
  for dwr in execute s_query using pID loop
    id_service = dwr.id_service;
    v_name = dwr.v_name;
    cnt = dwr.cnt;
    return next; 
  end loop;
end $$;

select * from get_service(null);
select * from get_service(1);

