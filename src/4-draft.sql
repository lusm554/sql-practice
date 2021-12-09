/*
select
  f_sum
from
  bills
where dt_event = current_date;
*/

--insert into departments (v_name) values ('dep123');

/*
insert into contracts(id_department, dt_reg, v_ext_ident, v_status)
values
  (1, current_date, 1, 'A');
*/

/*
insert into bills (id_contract_inst, f_sum, dt_event, id_manager)
values
  (1, 20, now(), 1),
  (1, 100, now(), 1);
*/

-- select * from departments;
/*
select
  c.v_ext_ident,
  b.f_sum,
  b.dt_event -- remove
from
  contracts c
inner join
  bills b using (id_contract_inst)
where
  --b.dt_event = '2021-12-08 00:00:00';
  b.dt_event <= now();
*/

select
  c.v_ext_ident,
  b.f_sum,
  b.dt_event -- remove
from
  contracts c
inner join
  bills b using (id_contract_inst)
where
  b.dt_event <= now() -- now() – current date and time
order by
  b.dt_event desc 
limit 1;

