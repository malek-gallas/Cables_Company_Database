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

-- Create new role
CREATE ROLE hr_admin;

-- Grant privileges role
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

-- Create new user
CREATE USER nina IDENTIFIED BY 123456789
DEFAULT TABLESPACE hr
QUOTA UNLIMITED ON hr
TEMPORARY TABLESPACE hr_temp;

-- Grant roles to users
GRANT hr_admin to nina;