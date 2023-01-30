-- liquibase formatted sql changeLogId:a3f79240-ae84-45bc-8c36-afce577a00fa

-- changeset sergiorgiraldo:4
--comment: i am using this changeset to test liquibase hub

CREATE TABLE beta.users (id_user SERIAL PRIMARY KEY, str_name VARCHAR(256) NOT NULL);
CREATE TABLE beta.roles (id_role SERIAL PRIMARY KEY, str_name VARCHAR(256) NOT NULL);
CREATE TABLE beta.user_roles (id_user INT, id_role INT);
ALTER TABLE beta.user_roles ADD CONSTRAINT fk_user_id FOREIGN KEY (id_user) REFERENCES beta.users (id_user);
ALTER TABLE beta.user_roles ADD CONSTRAINT fk_role_id FOREIGN KEY (id_role) REFERENCES beta.roles (id_role);

-- rollback drop table beta.user_roles;
-- rollback drop table beta.roles;
-- rollback drop table beta.users;


