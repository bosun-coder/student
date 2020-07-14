DROP TABLE IF EXISTS employee_order;
DROP TABLE IF EXISTS employee;

CREATE TABLE employee (
    employee_id SERIAL,
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    role varchar(300),
    PRIMARY KEY (employee_id)
);

CREATE TABLE employee_order (
    order_id SERIAL,
    order_employee_id integer not null,
    description varchar(100),
    status integer not null,
    PRIMARY KEY (order_id),
    FOREIGN KEY (order_employee_id) REFERENCES employee(employee_id) ON DELETE RESTRICT
);
INSERT INTO