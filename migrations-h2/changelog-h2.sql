--liquibase formatted sql
--changeset sergiorgiraldo:1
--tagDatabase v1
create table test1(
id int primary key,
name varchar(255)
);