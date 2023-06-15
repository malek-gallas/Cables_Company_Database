----------------------------------------------------------- HR_ADMIN --------------------------------------------------------------

-- Create the "hr.employees" table
CREATE TABLE hr.employees (
    employee_id NUMBER(5) CONSTRAINT pk_employees PRIMARY KEY,
    first_name VARCHAR2(32) NOT NULL,
    last_name VARCHAR2(32) NOT NULL,
    job_title VARCHAR2(64),
    salary NUMBER(10,2) CONSTRAINT chk_salary CHECK (salary > 500),
    hire_date DATE DEFAULT SYSDATE,
    department_id NUMBER(3,0)
);

-- Create the "hr.departments" table
CREATE TABLE hr.departments (
    department_id NUMBER(3) CONSTRAINT pk_departments PRIMARY KEY,
    department_name VARCHAR2(32) NOT NULL
);

-- Create the "hr.projects" table
CREATE TABLE hr.projects (
    project_code VARCHAR2(8) CONSTRAINT pk_projects PRIMARY KEY,
    project_name VARCHAR2(32) NOT NULL
);

-- Create the "hr.assignments" table
CREATE TABLE hr.assignments (
    project_code VARCHAR2(8),
    employee_id NUMBER(5),
    CONSTRAINT pk_assignments PRIMARY KEY (project_code, employee_id),
    CONSTRAINT fk_assignments_projects FOREIGN KEY (project_code) REFERENCES hr.projects(project_code),
    CONSTRAINT fk_assignments_employees FOREIGN KEY (employee_id) REFERENCES hr.employees(employee_id)
);

-- Add foreign key constraint to the "hr.employees" table
ALTER TABLE hr.employees
ADD CONSTRAINT fk_employees_departments
FOREIGN KEY (department_id)
REFERENCES hr.departments(department_id);

-- Create a hr.sequence
CREATE SEQUENCE hr.seq1
START WITH 1
INCREMENT BY 1
MAXVALUE 999
NOCYCLE
CACHE 20;