-- Use the OpulenceNWT database to populate the tables with data (DML)
USE OpulenceNWT;

-- Use Case 1: Customer George Khramtchenko creates an account (customer is auto-populated).
INSERT INTO Customer(Customer_ID, First_Name, Last_Name, Country_Code) VALUES
(11, 'George', 'Khramtchenko', 'USA');

INSERT INTO Account(Account_ID, Account_Name, Account_Email, Account_Phone, Account_Status) VALUES
(11, 'George', 'gkhramt@gmail.com', '9784753347', 'Active');

-- Use Case 2: Customer George Khramtchenko contacts support (support ticket is opened).
INSERT INTO SupportTicket(Ticket_ID, Customer_ID, Issue_Type, Issue_Desc, Date_Opened, Date_Closed, Ticket_Status) VALUES
(11, 11, 'Subscription', 'Subscription terms are unclear!', '2023-03-23', '2023-03-27', 'Resolved');

-- Use Case 3: Customer Matteo Klein closes his account after ticket is resolved, account status is set to inactive.
UPDATE SupportTicket
SET Date_Closed = '2023-07-27'
WHERE Customer_ID = 3;

UPDATE Account
SET Account_Status = 'Inactive'
WHERE Account_ID = 3;

/* Use Case 4: Customer Gregoriy Murashkin updates his credit card details to a
   new card number and data, and updates his card name in the card details portal. */
UPDATE CardDetails
SET
	Full_Name = 'Gregoriy A. Murashkin',
    Card_Number = 49574857,
    Expiration_Date = '2029-04-01',
    CVV_Number = '264'
WHERE User_Profile = 7;

-- Use Case 5: Customer Joseph Abramowicz changes his membership subscription from monthly to lifetime.
UPDATE Membership
SET
	Membership_Type = 'Lifetime',
    Membership_Active = 'Y',
    Activation_Date ='2023-09-15',
    Expiration_Date = NULL,
    Auto_Renewal = NULL
WHERE Membership_ID = 2;

/* Use Case 6: Customer Olavi Heikkinen changes his account email address and phone number.
   The following day, Olavi temporarily disables his account for security purposes. */
UPDATE Account
SET
	Account_Email = 'olavi837@gmail.com',
    Account_Phone = '95418684358'
WHERE Account_ID = 10;

UPDATE Account
SET Account_Status = 'Temporarily Disabled'
WHERE Account_ID = 10;

/* Use Case 7: Customer Lina Maes updates her net worth in the finance entry without providing assets or liabilities data,
   and resubscribes to the subscription after newfound satisfaction with the product's software. */
UPDATE FinanceEntries
SET Date_Updated = '2024-02-26', Net_Worth = '374958'
WHERE Entry_ID = 4;

UPDATE Membership
SET
	Membership_Type = 'Monthly',
    Membership_Active = 'Y',
    Activation_Date = '2024-02-26',
    Expiration_Date = '2024-03-26',
    Auto_Renewal = 'Yes'
WHERE Membership_ID = 4;

/* Use Case 8: Customer Antoine Auclair updates his Country code to the United States after moving there,
   but opens a customer support ticket for unexpected changes to the features he has available to his account. */
UPDATE Customer
SET Country_Code = 'USA'
WHERE Customer_ID = 8;

INSERT INTO SupportTicket(Ticket_ID, Customer_ID, Issue_Type, Issue_Desc, Date_Opened, Date_Closed, Ticket_Status) VALUES
(12, 8, 'Account', 'Limited feature functionality after changing country settings to the United States', '2024-04-25', NULL, 'Unresolved');

-- Use Case 9: Customer Lina Maes inputs her assets and liabilities data for her previously created finance entry.
UPDATE Liabilities
SET
	Liabilities_Type = 'Restaurant Losses',
    Liabilities_Total = '40000'
WHERE Liabilities_ID = 4;

UPDATE Assets
SET
	Assets_Type = 'Tax Returns',
    Assets_Total = '32750'
WHERE Assets_ID = 4;

/* Use Case 10: Customer Antoine Auclair receives a satisfactory reply from customer support which resolves his
   functionality issue and updates his net worth, assets, and liabilities entries (only one asset and liability entry). */
UPDATE SupportTicket
SET Date_Closed = '2024-04-29'
WHERE Customer_ID = 8;

UPDATE FinanceEntries
SET
	Date_Updated = '2024-04-29',
    Net_Worth = '785913'
WHERE Entry_ID = 8;

UPDATE Assets
SET
	Assets_Type = 'Investment',
    Assets_Total = '12500'
WHERE Assets_ID = 8;

UPDATE Liabilities
SET
	Liabilities_Type = 'Restaurant Losses',
    Liabilities_Total = '2000'
WHERE Liabilities_ID = 8;

-- Perform SELECT * FROM command to check all tables were properly updated
SELECT * FROM Customer;
SELECT * FROM SupportTicket;
SELECT * FROM Account;
SELECT * FROM PaymentProfile;
SELECT * FROM CardDetails;
SELECT * FROM Membership;
SELECT * FROM FinanceEntries;
SELECT * FROM Liabilities;
SELECT * FROM Assets;