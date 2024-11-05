-- Use the OpulenceNWT database to view and create indexes
USE OpulenceNWT;

-- Display the status of all ticket IDs from the SupportTicket table prior to index creation
SELECT Ticket_ID, Ticket_Status FROM SupportTicket;

-- Create first index to view which customer tickets have been resolved
CREATE INDEX idx_ticket_resolve ON SupportTicket(Ticket_ID, Ticket_Status);
SHOW INDEX FROM SupportTicket;

-- Display the customer contact details from the Account table prior to index creation
SELECT Account_Name, Account_Email, Account_Phone FROM Account;

-- Create second index to view all customer contact details
CREATE INDEX idx_customer_details ON Account(Account_Name, Account_Email, Account_Phone);
SHOW INDEX FROM Account;

-- Drop the idx_ticket_resolve index
ALTER TABLE SupportTicket
DROP INDEX idx_ticket_resolve;

-- Drop the idx_customer_details index
ALTER TABLE Account
DROP INDEX idx_customer_details; 