create table if not exists departments (
  id_department bigint generated always as identity primary key,
  v_name varchar(255) not null
);

create table if not exists service (
  id_service bigint generated always as identity primary key,
  v_name varchar not null
);

create table if not exists contracts (
  id_contract_inst bigint generated always as identity primary key,
  id_department bigint references departments(id_department),
  dt_reg timestamp not null,
  v_ext_ident bigint not null,
  v_status varchar not null
);

alter table contracts
  add constraint check_types
  check (v_status in ('A', 'B', 'C'));

create table if not exists tariff_plan (
  id_tariff_plan bigint generated always as identity primary key,
  v_name varchar not null
);

create table if not exists bills (
  id_bill bigint generated always as identity primary key,
  id_contract_inst bigint references contracts(id_contract_inst) not null,
  f_sum int not null,
  dt_event timestamp not null,
  id_manager int not null
);

create table if not exists services (
  id_service_inst bigint generated always as identity primary key,
  id_contract_inst bigint references contracts(id_contract_inst) not null,
  id_tariff_plan bigint references tariff_plan(id_tariff_plan) not null,
  id_service bigint references service(id_service) not null,
  dt_start timestamp not null,
  dt_stop timestamp not null
);

