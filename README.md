# Blood-Bank-Management-System
Blood Bank Management System - SQL Database Project
A comprehensive SQL project that creates, populates, and defines operations for a complete Blood Bank Management System. This repository is an excellent resource for students, developers, and database enthusiasts looking to understand practical applications of SQL, from basic schema design to advanced stored procedures and transaction management.

Overview
This project provides a single, executable SQL script that builds a relational database for a blood bank. The database is designed to manage donors, patients, blood stock, donations, and transfusions efficiently. The script not only defines the structure but also includes sample data, a wide range of queries, and stored procedures to encapsulate common business logic.

Features
Comprehensive Schema Design: A well-normalized 7-table schema with primary keys, foreign keys, and constraints to ensure data integrity.

Rich Sample Data: Pre-populated tables to allow for immediate query testing and exploration.

Advanced Querying: An extensive collection of queries demonstrating various clauses (GROUP BY, HAVING, ORDER BY), joins (INNER, LEFT, RIGHT), and operators (LIKE, IN, BETWEEN).

SQL Functions: Practical use of aggregate, string, date, and numeric functions for data manipulation and reporting.

Data Integrity and Modification: Includes examples of ALTER TABLE, UPDATE, and DELETE statements.

Performance Optimization: Demonstrates the creation, use, and removal of indexes to speed up data retrieval.

Transaction Management: A clear example of using START TRANSACTION, SAVEPOINT, ROLLBACK, and COMMIT to ensure atomic operations.

Stored Procedures: Encapsulates business logic for key operations like recording donations and processing transfusions, making the database more robust and secure.

Database Schema
The database consists of 7 core tables:

donor: Stores personal and contact information about blood donors.

patient: Contains details of patients requiring blood transfusions.

hospital: Manages information about different hospitals.

bloodbank: Stores details of various blood bank centers.

bloodstock: An inventory table tracking the quantity of each blood group available at each bank.

donation: A transaction table logging every donation event, linking a donor to a blood bank.

transfusion: A transaction table logging every transfusion event, linking a patient, hospital, and blood bank.
