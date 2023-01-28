-- liquibase formatted sql

-- changeset sergiorgiraldo:1
CREATE TABLE users (id_user SERIAL PRIMARY KEY, str_name VARCHAR(256) NOT NULL);
CREATE TABLE roles (id_role SERIAL PRIMARY KEY, str_name VARCHAR(256) NOT NULL);
CREATE TABLE user_roles (id_user INT, id_role INT);
ALTER TABLE user_roles ADD CONSTRAINT fk_user_id FOREIGN KEY (id_user) REFERENCES users (id_user);
ALTER TABLE user_roles ADD CONSTRAINT fk_role_id FOREIGN KEY (id_role) REFERENCES roles (id_role);

-- rollback drop table users
-- rollback drop table roles
-- rollback drop table user_roles

