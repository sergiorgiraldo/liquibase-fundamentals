--liquibase formatted sql
--changeset sergiorgiraldo:2
--tagDatabase v2
create table users(
id int primary key,
name varchar(255)
);

insert into users (id, name) VALUES (1, 'john doe');
insert into users (id, name) VALUES (2, 'jane doe');
