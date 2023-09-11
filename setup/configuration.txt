-- create roles
use role securityadmin;

create role if not exists de_djamier;

grant role de_djamier to role sysadmin;

-- create databases & WH
use role sysadmin;

create or replace database db_raw;
create or replace database db_analytics;

create or replace warehouse transforming_wh
warehouse_size = 'xsmall'
warehouse_type = 'standard'
auto_suspend = 60
auto_resume = true
initially_suspended = true
comment = '';

-- grant access
grant create warehouse on account to role de_djamier;
grant all on warehouse transforming_wh to role de_djamier;
grant ownership on warehouse transforming_wh to role de_djamier revoke current grants;

grant all on database db_raw to role de_djamier;
grant all on database db_analytics to role de_djamier;
