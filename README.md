# Instrumentation Database SQL Code
This repository contains the SQL code ('Instrumentation_DB_SQL_code.sql') for an instrumentation database designed to track 
and manage various instruments. The database schema is designed to store comprehensive information about each instrument,
facilitating efficient tracking, calibration management, and maintenance planning.
**Purpose:**
The purpose of this database is to provide a centralized and structured repository for instrument-related data. This allows 
for:
* Efficient tracking of instrument location and status.
* Simplified management of calibration schedules.
* Improved maintenance planning and record-keeping.
* Better data analysis and reporting on instrument performance.

**Key Features:**
* **Detailed instrument information:**
Stores information such as instrument model, serial number, manufacturer, purchase date, and specifications.
*  **Calibration Tracking:**
Records calibration dates, calibration standards used, and calibration results.
*  **Maintenance History:**
Logs maintenance events, repairs and replacements.
* **Location Tracking:**
Tracks the current location of each instrument.
*  **Relationships:**
*  Uses foreign keys to link instruments to calibration records, maintenance logs, and location information, ensuring data
integrity.

**SQL File Contents:**
The "Instrumentation_DB_SQL_code.sql" file includes the following SQL statements:
*  'CREATE TABLE' statements for defining the database schema (tables, coloumns, data types, constraints).
*  'ALTER TABLE' statements for defining foreign key relationships.
*  Potentially 'INSERT INTO' statements for populating the database with initial data (e.g., sample instrument records,
common calibration standards).

**How to Use:**
1.  Use a SQL Client (e.g. MySQL Workbench, pgAdmin, SQL Developer) to connect to your database server.
2.  Execute the 'Instrumentation_DB_SQL_code.sql'file to create the database schema.
3.  (optional) Populate the database with your instrument data.

**Further Development:**
* Adding triggers for automated data validation
