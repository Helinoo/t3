INSERT INTO student (firstName, lastName, personNumber, email, adress, zip, city, studentID_0)
VALUES
('Alice', 'Taylor', '334455667788', 'alice.taylor@example.com', '111 Birch Ln', '54321', 'Metropolis', NULL),
('Daisy', 'Clark', '667788990011', 'daisy.clark@example.com', '444 Spruce Ave', '98765', 'Springfield', NULL),
('Henry', 'Adams', '001122334455', 'henry.adams@example.com', '888 Pine St', '54323', 'Rivertown', NULL),
('Ivy', 'Johnson', '112233445566', 'ivy.johnson@example.com', '999 Elm Ln', '67892', 'Hillview', NULL),
('Jake', 'White', '223344556677', 'jake.white@example.com', '123 Apple Blvd', '98766', 'Springfield', NULL),
('Lily', 'Brown', '334455667788', 'lily.brown@example.com', '456 Cherry Rd', '12346', 'Metropolis', NULL),
('Bob', 'Taylor', '445566778899', 'bob.smith@example.com', '111 Birch Ln', '54321', 'Metropolis', 1),
('Charlie', 'Taylor', '556677889900', 'charlie.harris@example.com', '111 Birch Ln', '54321', 'Metropolis', 1),
('Emily', 'Clark', '778899001122', 'emily.clark@example.com', '444 Spruce Ave', '98765', 'Springfield', 4),
('Frank', 'Smith', '889900112233', 'frank.smith@example.com', '222 Cedar Rd', '12345', 'Gotham', NULL),
('Grace', 'Smith', '990011223344', 'grace.smith@example.com', '222 Cedar Rd', '12345', 'Gotham', 6);

INSERT INTO instructor (firstName, lastName, personNumber, email, adress, zip, city)
VALUES
('James', 'Brown', '123456789012', 'james.brown@example.com', '123 Elm St', '54321', 'Springfield'),
('Emily', 'Davis', '987654321098', 'emily.davis@example.com', '456 Oak St', '12345', 'Rivertown'),
('Michael', 'Johnson', '112233445566', 'michael.johnson@example.com', '789 Maple Ave', '67890', 'Hilltown'),
('Sarah', 'Wilson', '223344556677', 'sarah.wilson@example.com', '101 Pine St', '98765', 'Shelbyville');

INSERT INTO instrument (brand, instrumentType, stock, locationOfInstrument)
VALUES
('Yamaha', 'Piano', 5, 'Room A'),
('Fender', 'Guitar', 8, 'Room A'),
('Stradivarius', 'Violin', 3, 'Room A');

INSERT INTO rental (studentID, instrumentID, dateOfRental, dueDateOfRental, rentalFee)
VALUES
(1, 1, '2024-01-01', '2024-02-01', 50),
(2, 2, '2024-01-05', '2024-03-05', 70),
(3, 3, '2024-01-10', '2024-02-10', 60);



