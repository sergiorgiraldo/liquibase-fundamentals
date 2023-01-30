-- liquibase formatted sql

-- changeset sergiorgiraldo:1
CREATE TABLE alpha.users (id_user SERIAL PRIMARY KEY, str_name VARCHAR(256) NOT NULL);
CREATE TABLE alpha.roles (id_role SERIAL PRIMARY KEY, str_name VARCHAR(256) NOT NULL);
CREATE TABLE alpha.user_roles (id_user INT, id_role INT);
ALTER TABLE alpha.user_roles ADD CONSTRAINT fk_user_id FOREIGN KEY (id_user) REFERENCES alpha.users (id_user);
ALTER TABLE alpha.user_roles ADD CONSTRAINT fk_role_id FOREIGN KEY (id_role) REFERENCES alpha.roles (id_role);

-- rollback drop table alpha.user_roles;
-- rollback drop table alpha.roles;
-- rollback drop table alpha.users;


