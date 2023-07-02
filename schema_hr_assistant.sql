---------------------------------------------------------- CABLES_ADMIN ---------------------------------------------------------------

-- Create new role
CREATE ROLE hr_assistant;

-- Grant privileges role
GRANT CREATE SESSION TO hr_assistant;
GRANT INSERT, UPDATE, DELETE, SELECT ON hr.employees TO hr_assistant;
GRANT INSERT, UPDATE, DELETE, SELECT ON hr.departments TO hr_assistant;
GRANT INSERT, UPDATE, DELETE, SELECT ON hr.projects TO hr_assistant;
GRANT INSERT, UPDATE, DELETE, SELECT ON hr.assignments TO hr_assistant;
GRANT SELECT ON hr.seq1 TO hr_assistant;

-- Create new user
CREATE USER frank IDENTIFIED BY 123456789
DEFAULT TABLESPACE hr
QUOTA 100M ON hr
TEMPORARY TABLESPACE hr_temp;

-- Grant roles to users
GRANT hr_assistant to frank;

-- Commit the changes
Commit;