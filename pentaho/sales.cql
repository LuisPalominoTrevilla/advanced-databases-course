CREATE TABLE company.daily_sales (
    product_name varchar,
    order_number int,
    date date,
    week_number,
    product_quantity int,
    unit_price float,
    total float,
    product_description varchar,
    sales_person varchar,
    client_email varchar,
    tax float,
    PRIMARY KEY (week_number, product_quantity)
) WITH comment='records daily sales';
