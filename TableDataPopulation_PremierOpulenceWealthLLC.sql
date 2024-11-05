-- Use the OpulenceNWT database to populate the tables with data (DML)
USE OpulenceNWT;

-- Populate the Customer table with data
INSERT INTO Customer(Customer_ID, First_Name, Last_Name, Country_Code) VALUES 
(1, 'John', 'Doe', 'USA'),
(2, 'Joseph', 'Abramowicz', 'POL'),
(3, 'Matteo', 'Klein', 'DEU'),
(4, 'Lina', 'Maes', 'BEL'),
(5, 'Xi', 'Zhao', 'CH'),
(6, 'Pedro', 'Diaz', 'DOM'),
(7, 'Gregoriy', 'Murashkin', 'RUS'),
(8, 'Antoine', 'Auclair', 'FRA'),
(9, 'Artem', 'Kovalenko', 'UKR'),
(10, 'Olavi', 'Heikkinen', 'FIN');

-- Populate the SupportTicket table with data
INSERT INTO SupportTicket(Ticket_ID, Customer_ID, Issue_Type, Issue_Desc, Date_Opened, Date_Closed, Ticket_Status) VALUES
(1, 1, 'Subscription', 'Software crash when activating subscription', '2023-06-05', '2023-06-14', 'Resolved'),
(2, 1, 'Subscription', 'Software crash when activating subscription', '2023-06-15', '2023-07-15', 'Resolved'),
(3, 5, 'Software', 'Software glitch in displaying personal net worth', '2023-07-24', '2023-07-29', 'Resolved'),
(4, 3, 'Account', 'Question regarding account ownership transfer', '2023-07-27', NULL, 'Unresolved'),
(5, 8, 'Subscription', 'Incorrect pricing displayed for account status', '2023-08-06', '2023-08-14', 'Resolved'),
(6, 9, 'Miscellaneous', 'General questions regarding product use', '2023-08-27', '2023-09-09', 'Resolved'),
(7, 8, 'Software', 'Software glitch when logging out of account', '2023-09-17', '2023-09-19', 'Resolved'),
(8, 7, 'Subscription', 'Cancel subscription and recieve refund', '2023-09-23', NULL, 'Unresolved'),
(9, 4, 'Account', 'Identity confirmation questions', '2023-09-26', '2023-10-02', 'Resolved'),
(10, 1, 'Account', 'Change email to update contact details', '2023-11-05', '2023-11-13', 'Resolved');

-- Populate the Account table with data
INSERT INTO Account(Account_ID, Account_Name, Account_Email, Account_Phone, Account_Status) VALUES
(1, 'Johnathan', 'jdoe@gmail.com', '7120877401', 'Active'),
(2, 'Joseph', 'jambram@gmail.com', '3552419545', 'Active'),
(3, 'Matteo', 'mklein024@gmail.com', '6536708514', 'Active'),
(4, 'Lina', 'linaloves@yahoo.com', '3589389293', 'Active'),
(5, 'Xi', 'xifest@gmail.com', '8591400362', 'Inactive'),
(6, 'Pedro', 'pedrosworld@gmail.com', '4309977943', 'Active'),
(7, 'Gregoriy', 'rusgreg11@gmail.com', '1754935526', 'Active'),
(8, 'Antoine', 'atoantony@gmail.com', '3343324385', 'Inactive'),
(9, 'Artem', 'artema@gmail.com', '1010708905', 'Active'),
(10, 'Olavi', 'olaviheik@gmail.com', '9541868424', 'Active');

-- Populate the PaymentProfile table with data
INSERT INTO PaymentProfile(Profile_Name, Profile_ID) VALUES
('JJ Doe', 1),
('Joss A', 2),
('Matt Klein', 3),
('Lina M', 4),
('XiZ', 5),
('Pedrodiaz', 6),
('Gregoriy', 7),
('Antoine Auc', 8),
('Artem K', 9),
('O Heikkinen', 10);

-- Populate the CardDetails table with data
INSERT INTO CardDetails(User_Profile, Card_Number, Full_Name, Expiration_Date, CVV_Number) VALUES
(1, 98878515, 'Johnathan Doe', '2025-08-01', '264'),
(2, 64393131, 'Joseph Abramowicz', '2026-04-01', '364'),
(3, 93049281, 'Matteo Klein', '2027-10-01', '496'),
(4, 18366677, 'Lina Maes', '2024-04-01', '254'),
(5, 40180280, 'Xi Zhao', '2028-11-01', '275'),
(6, 38809172, 'Pedro Diaz', '2025-12-01', '864'),
(7, 40355744, 'Gregoriy Murashkin', '2024-02-01', '907'),
(8, 26561939, 'Antoine Auclair', '2027-03-01', '375'),
(9, 44888755, 'Artem Kovalenko', '2024-07-01', '889'),
(10, 90411740, 'Olavi Heikkinen', '2026-05-01', '142');

-- Populate the Membership table with data
INSERT INTO Membership(Membership_ID, Membership_Type, Membership_Active, Activation_Date, Expiration_Date, Auto_Renewal) VALUES
(1, 'Lifetime', 'Y', '2023-06-18', Null, Null),
(2, 'Monthly', 'N', '2023-08-03', '2023-09-03', 'No'),
(3, 'Monthly', 'Y', '2023-09-23', '2023-10-23', 'Yes'),
(4, 'Cancelled', 'N', '2023-10-08', '2023-11-08', 'No'),
(5, 'Lifetime', 'Y', '2024-01-04', Null, Null),
(6, 'Monthly', 'Y', '2024-01-06', '2024-02-06', 'No'),
(7, 'Monthly', 'Y', '2024-02-08', '2024-03-08', 'Yes'),
(8, 'Lifetime', 'Y', '2024-03-24', Null, Null),
(9, 'Cancelled', 'Y', '2024-05-04', '2024-06-04', 'No'),
(10, 'Lifetime', 'Y', '2024-07-02', Null, Null);

-- Populate the FinanceEntries table with data
INSERT INTO FinanceEntries(Entry_ID, Account_Owner_ID, Date_Created, Date_Updated, Net_Worth) VALUES
(1, 1, '2023-08-05', NULL, 153335),
(2, 2, '2023-08-13', NULL, 1429455),
(3, 3, '2023-10-15', NULL, 1142524),
(4, 4, '2023-11-24', NULL, NULL),
(5, 5, '2024-01-10', NULL, 895543),
(6, 6, '2024-01-13', NULL, 100012),
(7, 7, '2024-03-06', NULL, 452965),
(8, 8, '2024-03-28', NULL, 775085),
(9, 9, '2024-03-30', NULL, NULL),
(10, 10, '2024-07-27', NULL, 3947506);

-- Populate the Liabilities table with data
INSERT INTO Liabilities(Liabilities_ID, Liabilities_Type, Liabilities_Total) VALUES
(1, 'Undetermined', 25000),
(2, 'Personal', 12478),
(3, 'Loans', 249456),
(4, NULL, NULL),
(5, 'Shopping', 999),
(6, 'Undetermined', 13454),
(7, 'Online Shopping', 7000),
(8, 'Restaurant Losses', 4000),
(9, 'Taxes', 27500),
(10, 'Undetermined', 97847);

-- Populate the Assets table with data
INSERT INTO Assets(Assets_ID, Assets_Type, Assets_Total) VALUES
(1, 'Business', 178335),
(2, 'Investment', 249456),
(3, 'Tax Return', 3212364),
(4, NULL, NULL),
(5, 'Salary', 7454),
(6, 'Gift', 45856),
(7, 'Online Business', 84656),
(8, 'Investment', 9567),
(9, 'Lottery', 864453),
(10, 'Undetermined', 57437);

-- Perform SELECT * FROM command to check all tables were populated
SELECT * FROM Customer;
SELECT * FROM SupportTicket;
SELECT * FROM Account;
SELECT * FROM PaymentProfile;
SELECT * FROM CardDetails;
SELECT * FROM Membership;
SELECT * FROM FinanceEntries;
SELECT * FROM Liabilities;
SELECT * FROM Assets;
