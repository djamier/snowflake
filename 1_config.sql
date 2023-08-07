use role sysadmin;

-- create databases
create or replace database db_raw;
create or replace database db_analytics;

-- create raw schema
create or replace schema db_raw.djamier_raw;

-- create analytics schema
create or replace schema db_analytics.djamier_staging;
create or replace schema db_analytics.djamier_intermediate;
create or replace schema db_analytics.djamier_fact;

-- create warehouse 
create or replace warehouse djamier_wh
    warehouse_size = 'xsmall'
    warehouse_type = 'standard'
    auto_suspend = 60
    auto_resume = true
    initially_suspended = true
    comment = 'data engineer warehouse';

-- create roles
use role securityadmin;

create role if not exists de_djamier;

grant role de_djamier to role sysadmin;

-- privilege grants
use role accountadmin;

grant create warehouse on account to role de_djamier;

-- warehouse grants
grant all on warehouse djamier_wh to role sysadmin;
grant all on warehouse djamier_wh to role de_djamier;
grant ownership on warehouse djamier_wh to role de_djamier revoke current grants;

use role securityadmin;

grant usage on database db_raw to role de_djamier;
grant usage on database db_analytics to role de_djamier;

grant usage on all schemas in database db_raw to role de_djamier;
grant usage on all schemas in database db_analytics to role de_djamier;

grant all on schema db_raw.djamier_raw to role de_djamier;
grant all on schema db_analytics.djamier_staging to role de_djamier;
grant all on schema db_analytics.djamier_intermediate to role de_djamier;
grant all on schema db_analytics.djamier_fact to role de_djamier;

-- future grants
grant all on future tables in schema db_raw.djamier_raw to role de_djamier;
grant all on future tables in schema db_analytics.djamier_staging to role de_djamier;
grant all on future tables in schema db_analytics.djamier_intermediate to role de_djamier;
grant all on future tables in schema db_analytics.djamier_fact to role de_djamier;

grant all on future views in schema db_raw.djamier_raw to role de_djamier;
grant all on future views in schema db_analytics.djamier_staging to role de_djamier;
grant all on future views in schema db_analytics.djamier_intermediate to role de_djamier;
grant all on future views in schema db_analytics.djamier_fact to role de_djamier;

grant all on future functions in schema db_analytics.djamier_staging to role de_djamier;
grant all on future functions in schema db_analytics.djamier_intermediate to role de_djamier;
grant all on future functions in schema db_analytics.djamier_fact to role de_djamier;

grant usage on future procedures in schema db_analytics.djamier_staging to role de_djamier;
grant usage on future procedures in schema db_analytics.djamier_intermediate to role de_djamier;
grant usage on future procedures in schema db_analytics.djamier_fact to role de_djamier;

use role sysadmin;
grant apply masking policy on account to role de_djamier;
