-- liquibase formatted sql

-- changeset sergiorgiraldo:2
CREATE TABLE alpha.sales (id_sale SERIAL PRIMARY KEY, id_user INT NOT NULL, str_item VARCHAR(256), dt_sale TIMESTAMP NOT NULL DEFAULT NOW());
ALTER TABLE alpha.sales ADD CONSTRAINT fk_user_id FOREIGN KEY (id_user) REFERENCES alpha.users (id_user);

-- rollback drop table sales


