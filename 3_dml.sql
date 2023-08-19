-- DML for raw database
use role sysadmin;

-- insert data to table ms_order_status
insert into db_raw.djamier_raw.ms_order_status values (1, 'waiting payment', 'system', current_timestamp, null, null);
insert into db_raw.djamier_raw.ms_order_status values (2, 'on process', 'system', current_timestamp, null, null);
insert into db_raw.djamier_raw.ms_order_status values (3, 'completed', 'system', current_timestamp, null, null);
insert into db_raw.djamier_raw.ms_order_status values (4, 'refund', 'system', current_timestamp, null, null);
insert into db_raw.djamier_raw.ms_order_status values (5, 'canceled', 'system', current_timestamp, null, null);

-- insert data to table ms_provinces
insert into db_raw.djamier_raw.ms_provinces values (1, 'dki jakarta', 'system', current_timestamp, null, null);

-- insert data to table ms_cities
insert into db_raw.djamier_raw.ms_cities values (1, 1, 'kota', 'jakarta timur', 'system', current_timestamp, null, null);
insert into db_raw.djamier_raw.ms_cities values (2, 1, 'kota', 'jakarta selatan', 'system', current_timestamp, null, null);
insert into db_raw.djamier_raw.ms_cities values (3, 1, 'kota', 'jakarta pusat', 'system', current_timestamp, null, null);
insert into db_raw.djamier_raw.ms_cities values (4, 1, 'kota', 'jakarta utara', 'system', current_timestamp, null, null);
insert into db_raw.djamier_raw.ms_cities values (5, 1, 'kota', 'jakarta barat', 'system', current_timestamp, null, null);
insert into db_raw.djamier_raw.ms_cities values (6, 1, 'kabupaten', 'kepulauan seribu', 'system', current_timestamp, null, null);
