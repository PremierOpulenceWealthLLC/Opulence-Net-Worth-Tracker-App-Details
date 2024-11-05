-- Create and use the OpulenceNWT database for Premier Opulence Wealth LLC.
DROP DATABASE IF EXISTS OpulenceNWT;
CREATE DATABASE OpulenceNWT;
USE OpulenceNWT;

-- Drop all OpulenceNWT database tables if necessary, in order (DDL)
DROP TABLE IF EXISTS Assets;
DROP TABLE IF EXISTS Liabilities;
DROP TABLE IF EXISTS FinanceEntries;
DROP TABLE IF EXISTS Membership;
DROP TABLE IF EXISTS CardDetails;
DROP TABLE IF EXISTS PaymentProfile;
DROP TABLE IF EXISTS Account;
DROP TABLE IF EXISTS SupportTicket;
DROP TABLE IF EXISTS Customer;

-- Create all of the required tables (DDL)
-- Create the Customer table
CREATE TABLE Customer(
  Customer_ID INT NOT NULL PRIMARY KEY,
  First_Name VARCHAR(255),
  Last_Name VARCHAR(255),
  Country_Code CHAR(3)
);

-- Create the SupportTicket table
CREATE TABLE SupportTicket(
  Ticket_ID INT NOT NULL PRIMARY KEY,
  Customer_ID INT,
  Issue_Type VARCHAR(50),
  Issue_Desc VARCHAR(255),
  Date_Opened DATE,
  Date_Closed DATE,
  Ticket_Status VARCHAR(25),
  FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

-- Create the Account table
CREATE TABLE Account(
  Account_ID INT NOT NULL PRIMARY KEY,
  Account_Name VARCHAR(255) NOT NULL,
  Account_Email VARCHAR(255) NOT NULL,
  Account_Phone VARCHAR(15) NOT NULL,
  Account_Status VARCHAR(50) NOT NULL,
  FOREIGN KEY (Account_ID) REFERENCES Customer(Customer_ID)
);

-- Create the PaymentProfile table
CREATE TABLE PaymentProfile(
  Profile_ID INT NOT NULL PRIMARY KEY,
  Profile_Name VARCHAR(255) NOT NULL,
  FOREIGN KEY (Profile_ID) REFERENCES Account(Account_ID)
);

-- Create the CardDetails table
CREATE TABLE CardDetails(
  Card_Number INT NOT NULL PRIMARY KEY,
  User_Profile INT,
  Full_Name VARCHAR(255) NOT NULL,
  Expiration_Date DATE NOT NULL,
  CVV_Number INT NOT NULL,
  FOREIGN KEY (User_Profile) REFERENCES PaymentProfile(Profile_ID)
);

-- Create the Membership table
CREATE TABLE Membership(
  Membership_ID INT NOT NULL PRIMARY KEY,
  Membership_Type VARCHAR(50) NOT NULL,
  Membership_Active VARCHAR(1) NOT NULL,
  Activation_Date DATE,
  Expiration_Date DATE,
  Auto_Renewal VARCHAR(3),
  FOREIGN KEY (Membership_ID) REFERENCES Account(Account_ID)
);

-- Create the FinanceEntries table
CREATE TABLE FinanceEntries(
  Entry_ID INT NOT NULL PRIMARY KEY,
  Account_Owner_ID INT,
  Date_Created DATE,
  Date_Updated DATE,
  Net_Worth INT,
  FOREIGN KEY (Account_Owner_ID) REFERENCES Account(Account_ID)
);

-- Create the Expenses table
CREATE TABLE Liabilities(
  Liabilities_ID INT NOT NULL PRIMARY KEY,
  Liabilities_Type VARCHAR(255),
  Liabilities_Total VARCHAR(255)
);

-- Create the Earnings table
CREATE TABLE Assets(
  Assets_ID INT NOT NULL PRIMARY KEY,
  Assets_Type VARCHAR(255),
  Assets_Total VARCHAR(255)
);

-- Give detailed information about the tables, their attributes, and values (DML)
DESCRIBE Customer;
DESCRIBE Assets;
DESCRIBE Liabilities;
DESCRIBE FinanceEntries;
DESCRIBE Membership;
DESCRIBE CardDetails;
DESCRIBE PaymentProfile;
DESCRIBE Account;
DESCRIBE SupportTicket;
DESCRIBE Customer;