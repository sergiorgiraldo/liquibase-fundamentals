-- liquibase formatted sql

-- changeset sergiorgiraldo:3

CREATE TABLE main.blah (id_blah SERIAL PRIMARY KEY, vl VARCHAR(256));

CREATE TABLE alpha.blah (id_blah SERIAL PRIMARY KEY, main_blah INT NOT NULL, vl VARCHAR(256));
ALTER TABLE alpha.blah ADD CONSTRAINT fk_main_blah FOREIGN KEY (id_blah) REFERENCES main.blah (id_blah);

INSERT INTO main.blah (vl) VALUES('value 1');
INSERT INTO main.blah (vl) VALUES('value 2');
INSERT INTO alpha.blah (main_blah, vl) VALUES(1, 'there it is value 1, here gabba gabba');

-- rollback drop table alpha.blah;
-- rollback drop table main.blah;


