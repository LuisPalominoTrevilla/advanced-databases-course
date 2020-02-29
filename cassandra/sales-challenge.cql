# Create keyspace
CREATE KEYSPACE company
WITH REPLICATION = {
    'class' : 'SimpleStrategy', 'replication_factor': 1
};

# Create table
CREATE TABLE company.daily_sales (
    sale_date date,
    sale_time text,
    product_name text,
    product_description text,
    product_brand text,
    product_price float,
    client_name text,
    client_email text,
    sales_tax float,
    sale_total float,
    quantity int,
    PRIMARY KEY (sale_date, product_name, client_email, sale_time)
) WITH comment='records daily sales';

# Queries
INSERT INTO company.daily_sales
(sale_date, sale_time, product_name, product_description, product_brand, product_price, client_name, client_email, sale_total, sales_tax, quantity)
VALUES ('2020-02-21', '10:40', 'Mac Pro', '17 inch laptop', 'Apple', 2999.99, 'Luis', 'luis@tec.mx', 2999.99, 340.5, 1);

INSERT INTO company.daily_sales
(sale_date, sale_time, product_name, product_description, product_brand, product_price, client_name, client_email, sale_total, sales_tax, quantity)
VALUES ('2020-02-21', '16:40', 'Mac Pro', '17 inch laptop', 'Apple', 2999.99, 'Jorge', 'jorge@tec.mx', 5999.98, 680.5, 2);

INSERT INTO company.daily_sales
(sale_date, sale_time, product_name, product_description, product_brand, product_price, client_name, client_email, sale_total, sales_tax, quantity)
VALUES ('2020-02-22', '22:10', 'Samsung S10', 'Samsung S10 phone 5G', 'Samsung', 999.99, 'Jorge', 'jorge@tec.mx', 999.99, 112.4, 1);

DROP TABLE company.daily_sales;

# Create good table
CREATE TABLE company.daily_sales (
    product_name varchar,
    order_number int,
    date date,
    product_quantity int,
    unit_price float,
    total float,
    product_description varchar,
    sales_person varchar,
    client_email varchar,
    tax float,
    PRIMARY KEY (date, product_name, order_number)
) WITH comment='records daily sales';

# Queries
INSERT INTO company.daily_sales
(product_name, order_number, date, product_quantity, unit_price, total, product_description, sales_person, client_email, tax)
VALUES ('samsung s10', 15819, '2020-02-28', 1, 19999.99, 23199.99, 'telefono personal', 'raul', 'luis@tec.mx', 3199.99);

INSERT INTO company.daily_sales
(product_name, order_number, date, product_quantity, unit_price, total, product_description, sales_person, client_email, tax)
VALUES ('lenovo y10', 54438, '2020-02-28', 1, 33000, 38280, 'computadora personal', 'raul', 'luis@tec.mx', 5280);

INSERT INTO company.daily_sales
(product_name, order_number, date, product_quantity, unit_price, total, product_description, sales_person, client_email, tax)
VALUES ('cuchara', 50431, '2020-02-28', 10, 50, 58, 'telefono personal', 'raul', 'luis@tec.mx', 8);

# Copy from CSV to daily_sales table
COPY company.daily_sales (product_name, order_number, date, product_quantity, unit_price, total, product_description, sales_person, client_email, tax)
FROM 'daily_sales.csv' WITH HEADER = TRUE;

# Make queries to daily_sales
SELECT * FROM daily_sales WHERE date = '2020-02-28';
SELECT * FROM daily_sales WHERE date = '2020-02-28' AND product_name = 'gansito';

# Create table sales by product
CREATE TABLE company.daily_sales_by_product (
    product_name varchar,
    order_number int,
    date date,
    product_quantity int,
    unit_price float,
    total float,
    product_description varchar,
    sales_person varchar,
    client_email varchar,
    tax float,
    PRIMARY KEY (product_name, date, order_number)
) WITH comment='records daily sales by product name';

# Copy from CSV to daily_sales_by_product table
COPY company.daily_sales_by_product (product_name, order_number, date, product_quantity, unit_price, total, product_description, sales_person, client_email, tax)
FROM 'daily_sales.csv' WITH HEADER = TRUE;

# Make queries to daily_sales_by_product
SELECT * FROM daily_sales_by_product WHERE product_name = 'gansito';
SELECT * FROM daily_sales_by_product WHERE product_name = 'oreo';
SELECT * FROM daily_sales_by_product WHERE product_name = 'pencil';
SELECT product_name FROM daily_sales_by_product;

# Homework:
# Create tables: sales_by_day, sales_by_week, sales_by_month
