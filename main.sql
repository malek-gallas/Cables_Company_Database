------------------------------------------------------------ SYSDBA -----------------------------------------------------------------

-- Create a new PDB
CREATE PLUGGABLE DATABASE cables_pdb
ADMIN USER cables_admin IDENTIFIED BY 123456789 ROLE = (DBA)
STORAGE (MAXSIZE 2G)
DEFAULT TABLESPACE cables 
    DATAFILE 'C:\app\malek\product\21c\oradata\XE\cables' SIZE 250M 
    AUTOEXTEND ON
    NEXT 250M MAXSIZE 2G
    PATH_PREFIX = 'C:\app\malek\product\21c\oradata\XE\cables'
    FILE_NAME_CONVERT = (
        'C:\app\malek\product\21c\oradata\XE\pdbseed', 
        'C:\app\malek\product\21c\oradata\XE\cables'
    );

-- Open the PDB
ALTER PLUGGABLE DATABASE cables_pdb OPEN;