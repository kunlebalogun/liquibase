--liquibase formatted sql

--changeset Alliu:customrs-table labels:JIRA1 context:v1
--comment: Create customers table

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20),
    address VARCHAR(200),
    created_at TIMESTAMP DEFAULT NOW()
);
--rollback DROP TABLE customers;
