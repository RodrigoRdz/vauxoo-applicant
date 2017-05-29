-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (id integer NOT NULL,
  first_name character varying(10),
  last_name character varying(10),
  department_id integer,
  id_hobby_1 integer,
  id_hobby_2 integer,
  id_jefe integer,
  CONSTRAINT employee_pkey PRIMARY KEY (id),
  CONSTRAINT employee_department_fkey FOREIGN KEY (department_id)
      REFERENCES employee_department (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT employee_id_hobby_1_fkey FOREIGN KEY (id_hobby_1)
      REFERENCES employee_hobby (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT employee_id_hobby_2_fkey FOREIGN KEY (id_hobby_2)
      REFERENCES employee_hobby (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT employee_id_jefe_fkey FOREIGN KEY (id_jefe)
      REFERENCES employee (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
  
  
);

CREATE TABLE employee_department ( id integer NOT NULL,
  name character varying(15),
  description character varying(20),
  CONSTRAINT employee_department_pkey PRIMARY KEY (id)
  
  
);

CREATE TABLE employee_hobby (
  id integer NOT NULL,
  name character varying(15),
  description character varying(25),
  CONSTRAINT employee_hobby_pkey PRIMARY KEY (id)
);

-- ...
