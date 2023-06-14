---------------------------------------------------------- CABLES_ADMIN ---------------------------------------------------------------

-- Create a new tablespace for the hr_schema
CREATE TABLESPACE hr
DATAFILE 'C:\app\malek\product\21c\oradata\XE\cables\hr'
SIZE 100M
AUTOEXTEND ON
NEXT 50M MAXSIZE 500M;

-- Create a new temporary tablespace for the hr_schema
CREATE TEMPORARY TABLESPACE hr_temp
TEMPFILE 'C:\app\malek\product\21c\oradata\XE\cables\hr_temp'
SIZE 20M
AUTOEXTEND ON
NEXT 10M MAXSIZE 100M;

-- Create the hr_schema
CREATE USER hr IDENTIFIED BY 123456789
    DEFAULT TABLESPACE hr
    QUOTA UNLIMITED ON hr
    TEMPORARY TABLESPACE hr_temp;

-- Create new roles
CREATE ROLE hr_admin;
CREATE ROLE hr_assistant;

-- Grant privileges roles
GRANT 
    CREATE SESSION, 
    CREATE ANY TABLE,
    CREATE ANY INDEX,
    CREATE ANY VIEW,
    CREATE ANY SYNONYM,
    CREATE ANY SEQUENCE,
    SELECT ANY TABLE,
    SELECT ANY SEQUENCE,
    ALTER ANY TABLE;
    ALTER ANY SEQUENCE
TO hr_admin;


GRANT CREATE SESSION TO hr_assistant;
GRANT INSERT, UPDATE, DELETE, SELECT ON hr.employees TO hr_assistant;
GRANT INSERT, UPDATE, DELETE, SELECT ON hr.departments TO hr_assistant;
GRANT INSERT, UPDATE, DELETE, SELECT ON hr.hr.projects TO hr_assistant;
GRANT INSERT, UPDATE, DELETE, SELECT ON hr.assignments TO hr_assistant;
GRANT SELECT ON hr.seq1 TO hr_assistant;

-- Create new users
CREATE USER nina IDENTIFIED BY 123456789
DEFAULT TABLESPACE hr
QUOTA UNLIMITED ON hr
TEMPORARY TABLESPACE hr_temp;

CREATE USER frank IDENTIFIED BY 123456789
DEFAULT TABLESPACE hr
QUOTA 100M ON hr
TEMPORARY TABLESPACE hr_temp;

-- Grant roles to users
GRANT hr_admin to nina;
GRANT hr_assistant to frank;