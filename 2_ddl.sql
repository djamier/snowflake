-- DDL for raw database
use role sysadmin;

-- create schema
create or replace schema db_raw.djamier_raw;

-- create table ms_order_status
create or replace table db_raw.djamier_raw.ms_order_status (
    id number
    , status_name string
    , created string
    , created_ts timestamp
    , updated string
    , updated_ts timestamp
);

-- create table ms_provinces
create or replace table db_raw.djamier_raw.ms_provinces (
    id number
    , city_level string
    , city string
    , created string
    , created_ts timestamp
    , updated string
    , updated_ts timestamp
);

-- create table ms_cities
create or replace table db_raw.djamier_raw.ms_cities (
    id number
    , province_id number
    , city string
    , created string
    , created_ts timestamp
    , updated string
    , updated_ts timestamp
);
