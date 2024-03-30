
-- create database
CREATE DATABASE MYDB;
GO
CREATE LOGIN MYUSER WITH PASSWORD=N'Abc123def';
GO

-- create the user on the target database for the login
USE MyDB;
GO
CREATE USER MYUSER FOR LOGIN MYDB;
GO

GO
ALTER ROLE [db_owner] ADD MEMBER MYDB;
GO

