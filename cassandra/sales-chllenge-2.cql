# Create table sales by day aggregate
/*
* In this case, we don't need to add new columns because we
* already have the product_quantity and date fields that can help us in the aggregation process.
* However, we could remove the order_id, client_email and sales_person columns
* because they are not needed for the aggregation
*/
CREATE TABLE company.sales_by_day (
    product_name varchar,
    date date,
    product_quantity int,
    unit_price float,
    total float,
    product_description varchar,
    tax float,
    PRIMARY KEY (date, product_name)
) WITH comment='aggregates sales by day';

# Insert testing data
INSERT INTO company.sales_by_day
(product_name, date, product_quantity, unit_price, total, product_description, tax)
VALUES ('samsung s10', '2020-02-28', 4, 19999.99, 23199.99, 'telefono personal', 3199.99);

INSERT INTO company.sales_by_day
(product_name, date, product_quantity, unit_price, total, product_description, tax)
VALUES ('lenovo y10', '2020-02-28', 6, 33000, 38280, 'computadora personal', 5280);

INSERT INTO company.sales_by_day
(product_name, date, product_quantity, unit_price, total, product_description, tax)
VALUES ('cuchara', '2020-02-28', 200, 50, 58, 'cucharita', 8);

#This insert will only update the total sales in that day
INSERT INTO company.sales_by_day
(product_name, date, product_quantity, unit_price, total, product_description, tax)
VALUES ('samsung s10', '2020-02-28', 8, 19999.99, 23199.99, 'telefono personal', 3199.99);

# Select all aggregated sales from February 28
SELECT * FROM sales_by_day WHERE date = '2020-02-28';

# Create table sales by week aggregate
/*
* In this case, we take the table used for sales by day but add a new column
* called week_number.
*/
CREATE TABLE company.sales_by_week (
    product_name varchar,
    date date,
    week_number int,
    product_quantity int,
    unit_price float,
    total float,
    product_description varchar,
    tax float,
    PRIMARY KEY (week_number, product_name)
) WITH comment='aggregates sales by week';

# Insert testing data
INSERT INTO company.sales_by_week
(product_name, date, week_number, product_quantity, unit_price, total, product_description, tax)
VALUES ('samsung s10', '2020-02-28', 1, 4, 19999.99, 23199.99, 'telefono personal', 3199.99);

INSERT INTO company.sales_by_week
(product_name, date, week_number, product_quantity, unit_price, total, product_description, tax)
VALUES ('lenovo y10', '2020-02-28', 1, 6, 33000, 38280, 'computadora personal', 5280);

INSERT INTO company.sales_by_week
(product_name, date, week_number, product_quantity, unit_price, total, product_description, tax)
VALUES ('cuchara', '2020-02-28', 1, 200, 50, 58, 'cucharita', 8);

INSERT INTO company.sales_by_week
(product_name, date, week_number, product_quantity, unit_price, total, product_description, tax)
VALUES ('cuchara', '2020-03-02', 2, 100, 50, 58, 'cucharita', 8);

# Get all aggregated sales from week 1
SELECT * FROM sales_by_week WHERE week_number = 1;
# Get all aggregated sales from week 2
SELECT * FROM sales_by_week WHERE week_number = 2;
# Get all samsungs sold in week 1
SELECT product_name, product_quantity AS sold FROM sales_by_week WHERE week_number = 1 AND product_name = 'samsung s10';

# Create table sales by month aggregate
/*
* In this case, we take the table previously used and add a new column
* called month_number.
*/
CREATE TABLE company.sales_by_month (
    product_name varchar,
    date date,
    month_number int,
    product_quantity int,
    unit_price float,
    total float,
    product_description varchar,
    tax float,
    PRIMARY KEY (month_number, product_name)
) WITH comment='aggregates sales by month';

# Insert testing data
INSERT INTO company.sales_by_month
(product_name, date, month_number, product_quantity, unit_price, total, product_description, tax)
VALUES ('samsung s10', '2020-02-28', 2, 7, 19999.99, 23199.99, 'telefono personal', 3199.99);

INSERT INTO company.sales_by_month
(product_name, date, month_number, product_quantity, unit_price, total, product_description, tax)
VALUES ('lenovo y10', '2020-02-28', 2, 6, 33000, 38280, 'computadora personal', 5280);

INSERT INTO company.sales_by_month
(product_name, date, month_number, product_quantity, unit_price, total, product_description, tax)
VALUES ('cuchara', '2020-02-28', 2, 200, 50, 58, 'cucharita', 8);

INSERT INTO company.sales_by_month
(product_name, date, month_number, product_quantity, unit_price, total, product_description, tax)
VALUES ('cuchara', '2020-03-02', 3, 100, 50, 58, 'cucharita', 8);

# Get all aggregated sales from February
SELECT * FROM sales_by_month WHERE month_number = 2;
# Get all aggregated sales from march
SELECT * FROM sales_by_month WHERE month_number = 3;
# Get all samsungs sold in February
SELECT product_name, product_quantity AS sold FROM sales_by_month WHERE month_number = 2 AND product_name = 'samsung s10';
