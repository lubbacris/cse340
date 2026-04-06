--Insert a new record
INSERT INTO account (account_firstname, account_lastname, account_email, account_password) 
VALUES ('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');


--Update the account type
UPDATE account 
SET account_type = 'Admin' 
WHERE account_id = 1;


--Delete the record
DELETE FROM account 
WHERE account_id = 1;


--Update a string using REPLACE
UPDATE inventory 
SET inv_description = REPLACE(inv_description, 'small interiors', 'a huge interior') 
WHERE inv_id = 10;


--Inner Join
SELECT i.inv_make, i.inv_model, c.classification_name 
FROM inventory i
INNER JOIN classification c ON i.classification_id = c.classification_id
WHERE c.classification_name = 'Sport';


--Update image paths
UPDATE inventory 
SET inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
	inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');