# COMMANDS

# create keyspace
CREATE KEYSPACE precission_agriculture
WITH REPLICATION = {
	'class' : 'SimpleStrategy', 'replication_factor': 1
};

# show keyspaces
describe keyspaces

# use a keyspace
use precission_agriculture;

# show tables
describe tables;

# create table
CREATE TABLE precission_agriculture.humidity_by_sensor (
	sensor_id int,
	time_discrete text,
	row_id text,
	time_measure timestamp,
	water_level float,
	position_x int,
	position_y int,
	last_maintenance date,
	PRIMARY KEY (sensor_id, time_discrete)
) WITH comment='records humidity level of the field';

CREATE TABLE precission_agriculture.humidity_by_time (
	sensor_id int,
	time_discrete text,
	row_id text,
	time_measure timestamp,
	water_level float,
	position_x int,
	position_y int,
	last_maintenance date,
	PRIMARY KEY (time_discrete, sensor_id)
) WITH comment='records humidity level of the field by time';

CREATE TABLE precission_agriculture.humidity_by_water_level (
	sensor_id int,
	time_discrete text,
	row_id text,
	time_measure timestamp,
	water_level float,
	position_x int,
	position_y int,
	last_maintenance date,
	PRIMARY KEY (time_discrete, water_level)
) WITH comment='records humidity level of the field by time';

CREATE TABLE precission_agriculture.low_humidity_by_time_and_sensor (
	sensor_id int,
	time_discrete text,
	row_id text,
	time_measure timestamp,
	water_level float,
	position_x int,
	position_y int,
	last_maintenance date,
	PRIMARY KEY ((time_discrete, sensor_id), water_level)
) WITH comment='records humidity level of the field by time';

# delete table
DROP TABLE precission_agriculture.humidity_by_sensor;

# insert into table
insert into precission_agriculture.humidity_by_sensor (
	sensor_id, time_discrete, time_measure, row_id, water_level,
	position_x, position_y, last_maintenance) values (
	1, '12:00', dateof(now()), '1r', 0.85, 1, 4, '2020-02-21');

insert into precission_agriculture.humidity_by_sensor (
    sensor_id, time_discrete, time_measure, row_id, water_level,
    position_x, position_y, last_maintenance) values (
    1, '12:05', dateof(now()), '1r', 0.75, 1, 4, '2020-02-21');

insert into precission_agriculture.humidity_by_sensor (
	sensor_id, time_discrete, time_measure, row_id, water_level,
	position_x, position_y, last_maintenance) values (
	1, '12:10', dateof(now()), '1r', 0.95, 1, 4, '2020-02-21');

insert into precission_agriculture.humidity_by_sensor (
    sensor_id, time_discrete, time_measure, row_id, water_level,
    position_x, position_y, last_maintenance) values (
    2, '12:00', dateof(now()), '1r', 0.75, 1, 4, '2020-02-21');

insert into precission_agriculture.humidity_by_sensor (
    sensor_id, time_discrete, time_measure, row_id, water_level,
    position_x, position_y, last_maintenance) values (
    2, '12:05', dateof(now()), '1r', 0.87, 1, 4, '2020-02-21');

---

insert into precission_agriculture.humidity_by_time (sensor_id, time_discrete, time_measure, row_id, water_level,
	position_x, position_y, last_maintenance) values (
	1, '12:00', dateof(now()), '1r', 0.85, 1, 4, '2020-02-21');

insert into precission_agriculture.humidity_by_time (sensor_id, time_discrete, time_measure, row_id, water_level,
    position_x, position_y, last_maintenance) values (
    1, '12:05', dateof(now()), '1r', 0.75, 1, 4, '2020-02-21');

insert into precission_agriculture.humidity_by_time (sensor_id, time_discrete, time_measure, row_id, water_level,
	position_x, position_y, last_maintenance) values (
	1, '12:10', dateof(now()), '1r', 0.95, 1, 4, '2020-02-21');

insert into precission_agriculture.humidity_by_time (sensor_id, time_discrete, time_measure, row_id, water_level,
    position_x, position_y, last_maintenance) values (
    2, '12:00', dateof(now()), '1r', 0.75, 1, 4, '2020-02-21');

insert into precission_agriculture.humidity_by_time (sensor_id, time_discrete, time_measure, row_id, water_level,
    position_x, position_y, last_maintenance) values (
    2, '12:05', dateof(now()), '1r', 0.87, 1, 4, '2020-02-21');

---

insert into precission_agriculture.humidity_by_water_level (sensor_id, time_discrete, time_measure, row_id, water_level,
	position_x, position_y, last_maintenance) values (
	1, '12:00', dateof(now()), '1r', 0.85, 1, 4, '2020-02-21');

insert into precission_agriculture.humidity_by_water_level (sensor_id, time_discrete, time_measure, row_id, water_level,
    position_x, position_y, last_maintenance) values (
    1, '12:05', dateof(now()), '1r', 0.75, 1, 4, '2020-02-21');

insert into precission_agriculture.humidity_by_water_level (sensor_id, time_discrete, time_measure, row_id, water_level,
	position_x, position_y, last_maintenance) values (
	1, '12:10', dateof(now()), '1r', 0.95, 1, 4, '2020-02-21');

insert into precission_agriculture.humidity_by_water_level (sensor_id, time_discrete, time_measure, row_id, water_level,
    position_x, position_y, last_maintenance) values (
    2, '12:00', dateof(now()), '1r', 0.75, 1, 4, '2020-02-21');

insert into precission_agriculture.humidity_by_water_level (sensor_id, time_discrete, time_measure, row_id, water_level,
    position_x, position_y, last_maintenance) values (
    2, '12:05', dateof(now()), '1r', 0.87, 1, 4, '2020-02-21');

---

insert into precission_agriculture.low_humidity_by_time_and_sensor (sensor_id, time_discrete, time_measure, row_id, water_level,
	position_x, position_y, last_maintenance) values (
	1, '12:00', dateof(now()), '1r', 0.85, 1, 4, '2020-02-21');

insert into precission_agriculture.low_humidity_by_time_and_sensor (sensor_id, time_discrete, time_measure, row_id, water_level,
    position_x, position_y, last_maintenance) values (
    1, '12:05', dateof(now()), '1r', 0.75, 1, 4, '2020-02-21');

insert into precission_agriculture.low_humidity_by_time_and_sensor (sensor_id, time_discrete, time_measure, row_id, water_level,
	position_x, position_y, last_maintenance) values (
	1, '12:10', dateof(now()), '1r', 0.95, 1, 4, '2020-02-21');

insert into precission_agriculture.low_humidity_by_time_and_sensor (sensor_id, time_discrete, time_measure, row_id, water_level,
    position_x, position_y, last_maintenance) values (
    2, '12:00', dateof(now()), '1r', 0.75, 1, 4, '2020-02-21');

insert into precission_agriculture.low_humidity_by_time_and_sensor (sensor_id, time_discrete, time_measure, row_id, water_level,
    position_x, position_y, last_maintenance) values (
    2, '12:05', dateof(now()), '1r', 0.87, 1, 4, '2020-02-21');


# select from table
select * from precission_agriculture.humidity_by_sensor;

# Copy from csv
COPY precission_agriculture.humidity_by_time (time_discrete,sensor_id,water_level,last_maintenance,position_x,position_y,row_id,time_measure)
FROM 'sensor1.csv' WITH HEADER = TRUE;
