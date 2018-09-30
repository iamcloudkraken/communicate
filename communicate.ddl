-- DROP SCHEMA communicate;

CREATE SCHEMA communicate AUTHORIZATION postgres;

-- Drop table

-- DROP TABLE communicate."user"

CREATE TABLE communicate."user" (
	id numeric NOT NULL,
	first_name varchar NULL,
	last_name varchar NULL,
	created_date timestamp NULL,
	is_active bpchar(1) NULL,
	CONSTRAINT user_pk PRIMARY KEY (id)
);


-- DROP TABLE communicate."group"

CREATE TABLE communicate."group" (
	id numeric NOT NULL,
	"name" varchar NULL,
	created_date timestamp NULL,
	is_active bpchar(1) NULL,
	CONSTRAINT group_pk PRIMARY KEY (id)
);

-- DROP TABLE communicate.user_group

CREATE TABLE communicate.user_group (
	id numeric NOT NULL,
	user_id numeric NOT NULL,
	group_id numeric NULL,
	created_date timestamp NULL,
	is_active bpchar(1) NULL,
	CONSTRAINT user_group_pk PRIMARY KEY (id),
	CONSTRAINT user_group_group_fk FOREIGN KEY (id) REFERENCES communicate."group"(id),
	CONSTRAINT user_group_user_fk FOREIGN KEY (id) REFERENCES communicate."user"(id)
);


        
 
    




