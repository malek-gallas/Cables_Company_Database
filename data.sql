----------------------------------------------------------- HR_ASSISTANT --------------------------------------------------------------

-- hr.departments

INSERT INTO hr.departments(department_id, department_name)
VALUES(hr.seq1.NEXTVAL, 'Human Resources');

INSERT INTO hr.departments(department_id, department_name)
VALUES(hr.seq1.NEXTVAL, 'Production');

INSERT INTO hr.departments(department_id, department_name)
VALUES(hr.seq1.NEXTVAL, 'Sales');

INSERT INTO hr.departments(department_id, department_name)
VALUES(hr.seq1.NEXTVAL, 'IT');

INSERT INTO hr.departments(department_id, department_name)
VALUES(hr.seq1.NEXTVAL, 'Research and Development');

-- hr.employees

INSERT INTO hr.employees (employee_id,first_name,last_name,job_title,salary,hire_date,department_id) 
VALUES (100,'Stevie','Wonder','CEO',5000,TO_DATE('01/01/2010','DD-MM-YYYY'),01);

INSERT INTO hr.employees (employee_id,first_name,last_name,job_title,salary,hire_date,department_id) 
VALUES (101,'Nina','Simone','HR Manager',2500,TO_DATE('12/03/2012','DD-MM-YYYY'),01);

INSERT INTO hr.employees (employee_id,first_name,last_name,job_title,salary,hire_date,department_id) 
VALUES (102,'Frank','Sinatra','HR Assistant',1500,TO_DATE('12/09/2012','DD-MM-YYYY'),01);

INSERT INTO hr.employees (employee_id,first_name,last_name,job_title,salary,hire_date,department_id) 
VALUES (103,'Michael','Jackson','Production Engineer',2000,TO_DATE('19/02/2013','DD-MM-YYYY'),02);

INSERT INTO hr.employees (employee_id,first_name,last_name,job_title,salary,hire_date,department_id) 
VALUES (104,'Bruno','Mars','Production Technician',1000,TO_DATE('19/08/2013','DD-MM-YYYY'),02);

INSERT INTO hr.employees (employee_id,first_name,last_name,job_title,salary,hire_date,department_id) 
VALUES (105,'Jennifer','Lopez','Sales Manager',1800,TO_DATE('15/09/2016','DD-MM-YYYY'),03);

INSERT INTO hr.employees (employee_id,first_name,last_name,job_title,salary,hire_date,department_id) 
VALUES (106,'Dua','Lipa','Sales Assistant',800,TO_DATE('15/12/2016','DD-MM-YYYY'),03);

INSERT INTO hr.employees (employee_id,first_name,last_name,job_title,salary,hire_date,department_id) 
VALUES (107,'Bill','Withers','Data Engineer',2800,TO_DATE('21/04/2014','DD-MM-YYYY'),04);

INSERT INTO hr.employees (employee_id,first_name,last_name,job_title,salary,hire_date,department_id) 
VALUES (108,'James','Brown','Software Engineer',2200,TO_DATE('21/10/2014','DD-MM-YYYY'),04);

INSERT INTO hr.employees (employee_id,first_name,last_name,job_title,salary,hire_date,department_id) 
VALUES (109,'Olivia','Rodrigo','Research and Development Manager',1700,TO_DATE('20/03/2018','DD-MM-YYYY'),05);

INSERT INTO hr.employees (employee_id,first_name,last_name,job_title,salary,hire_date,department_id) 
VALUES (110,'Sabrina','Carpenter','Research and Development Assistant',700,TO_DATE('20/09/2018','DD-MM-YYYY'),05);

-- hr.projects

INSERT INTO hr.projects (project_code,project_name) 
VALUES ('P1','VW');

INSERT INTO hr.projects (project_code,project_name) 
VALUES ('P2','AUDI');

INSERT INTO hr.projects (project_code,project_name) 
VALUES ('P3','MERCEDES');

INSERT INTO hr.projects (project_code,project_name) 
VALUES ('P4','BMW');

INSERT INTO hr.projects (project_code,project_name) 
VALUES ('P5','PORSCHE');

-- hr.assignments

INSERT INTO hr.assignments (project_code,employee_id) VALUES ('P1',103);
INSERT INTO hr.assignments (project_code,employee_id) VALUES ('P1',104);
INSERT INTO hr.assignments (project_code,employee_id) VALUES ('P1',105);
INSERT INTO hr.assignments (project_code,employee_id) VALUES ('P1',106);
INSERT INTO hr.assignments (project_code,employee_id) VALUES ('P1',107);
INSERT INTO hr.assignments (project_code,employee_id) VALUES ('P1',108);
INSERT INTO hr.assignments (project_code,employee_id) VALUES ('P1',109);
INSERT INTO hr.assignments (project_code,employee_id) VALUES ('P1',110);

INSERT INTO hr.assignments (project_code,employee_id) VALUES ('P2',103);
INSERT INTO hr.assignments (project_code,employee_id) VALUES ('P2',104);
INSERT INTO hr.assignments (project_code,employee_id) VALUES ('P2',105);
INSERT INTO hr.assignments (project_code,employee_id) VALUES ('P2',106);
INSERT INTO hr.assignments (project_code,employee_id) VALUES ('P2',107);
INSERT INTO hr.assignments (project_code,employee_id) VALUES ('P2',108);

INSERT INTO hr.assignments (project_code,employee_id) VALUES ('P3',103);
INSERT INTO hr.assignments (project_code,employee_id) VALUES ('P3',104);
INSERT INTO hr.assignments (project_code,employee_id) VALUES ('P3',105);
INSERT INTO hr.assignments (project_code,employee_id) VALUES ('P3',106);

INSERT INTO hr.assignments (project_code,employee_id) VALUES ('P4',101);
INSERT INTO hr.assignments (project_code,employee_id) VALUES ('P4',102);

INSERT INTO hr.assignments (project_code,employee_id) VALUES ('P5',100);

-- Commit all changes
COMMIT;