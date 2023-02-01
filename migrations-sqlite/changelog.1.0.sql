-- liquibase formatted sql changeLogId:422fb44f-9e0e-40df-ad71-d13547b3a155

-- changeset sergiorgiraldo:1
CREATE TABLE sales (id_sale INT, vl_sale VARCHAR(256));

-- rollback drop table sales;


