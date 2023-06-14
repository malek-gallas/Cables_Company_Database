# Cables_Company_Database

This repository contains an Oracle database script<br/>that creates a new PDB and sets up tables, users, and privileges for managing human resources of a cables company.

## Prerequisites

- Oracle 21C XE (Express Edition) installed.

## Paths Correction

- Edit the paths in main.sql/line8, main.sql/line11, main.sql/line13 and main.sql/line14 to your machine paths.
- Edit the paths in schema.sql/line5 and schema.sql/line12 to your machine paths.

## Instructions

- Open your command terminal.
- Run: SQLPLUS / AS SYSDBA;
- Run: @PATH_TO_REPOSITORY_FOLDER\run.sql

## Usage
- You can use this script to set up and manage the cables database. 
- Follow the instructions provided in the sections above to create the necessary PDB, tables, and users. 
- Modify the script as per your requirements, such as adding more sample data or altering the table structure.

## License
- This project is licensed under the MIT License.
- Feel free to modify the scripts according to your requirements and include any additional details that you think are relevant.
