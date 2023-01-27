--liquibase formatted sql
--changeset sergiorgiraldo:3
create table stores(
name varchar(255)
);

create table regions(
name varchar(255)
);

insert into stores (name) VALUES ('super store');
insert into regions (name) VALUES ('north');
insert into regions (name) VALUES ('south');

--rollback drop table stores;
--rollback drop table regions;