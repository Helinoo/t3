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

INSERT INTO instructor_availability (instructorID, startTime, endTime)
VALUES
(1, '08:00 AM', '12:00 PM'),
(2, '01:00 PM', '05:00 PM'),
(3, '09:00 AM', '03:00 PM'),
(4, '10:00 AM', '02:00 PM');

INSERT INTO instruments_to_teach (instructorID, instrumentsTaught)
VALUES
(1, 'Guitar, Piano, Violin'),
(2, 'Guitar, Piano, Violin'),
(3, 'Guitar, Piano, Violin'),
(4, 'Guitar, Piano, Violin');

INSERT INTO price_list (price, lessonType, lessonSkill)
VALUES
(150, 'individual', 'beginner'),
(150, 'individual', 'intermediate'),
(200, 'individual', 'advanced'),
(100, 'group', 'beginner'),
(100, 'group', 'intermediate'),
(140, 'group', 'advanced'),
(120, 'ensemble', 'beginner'),
(120, 'ensemble', 'intermediate'),
(160, 'ensemble', 'advanced');

INSERT INTO lesson (instructorID, date, priceID)
VALUES
(1, '2024-01-15 10:00 AM', 1),
(2, '2024-01-16 02:00 PM', 2),
(3, '2024-01-17 09:00 AM', 3),
(4, '2024-01-18 01:00 PM', 4),
(1, '2024-01-19 10:00 AM', 5),
(2, '2024-01-20 02:00 PM', 6),
(3, '2024-01-21 09:00 AM', 7),
(4, '2024-01-22 01:00 PM', 8),
(1, '2024-01-23 10:00 AM', 9),
(1, '2024-02-01 08:00 AM', 1),
(1, '2024-02-02 09:30 AM', 1),
(2, '2024-02-01 01:15 PM', 2),
(2, '2024-02-02 02:30 PM', 2),
(2, '2024-02-06 03:45 PM', 2),
(4, '2024-02-01 10:30 AM', 4);

INSERT INTO ensemble_lesson (lessonID, genre, minStudents, maxStudents)
VALUES
(3, 'rock', 5, 15),
(6, 'classical', 5, 15),
(9, 'punk', 5, 15),
(11, 'rock', 5, 15),
(14, 'classical', 5, 15),
(13, 'punk', 5, 15);

INSERT INTO group_lesson (lessonID, minStudents, maxStudents, instrument)
VALUES
(5, 4, 12, 'Guitar'),
(2, 4, 12, 'Piano'),
(8, 4, 12, 'Violin'),
(10, 4, 12, 'Guitar'),
(12, 4, 12, 'Piano'),
(15, 4, 12, 'Violin');

INSERT INTO student_lesson (studentID, lessonID, siblingDiscount)
VALUES
(2, 2, TRUE),
(3, 3, TRUE),
(4, 4, TRUE),
(5, 5, TRUE),
(6, 6, TRUE),
(7, 7, TRUE),
(8, 8, FALSE),
(9, 9, FALSE),
(2, 10, TRUE),
(3, 11, TRUE),
(4, 12, TRUE),
(5, 13, TRUE),
(6, 14, TRUE),
(8, 15, FALSE),
(9, 1, FALSE),
(7, 13, FALSE);

INSERT INTO student_phone (phoneNumber, studentID)
VALUES
('123-456-7890', 1),
('987-654-3210', 2),
('456-789-0123', 3),
('123-789-4560', 5),
('789-654-1230', 7),
('555-111-2222', 8),
('777-888-9999', 10),
('111-222-3333', 11);

INSERT INTO contact_person (firstName, lastName, studentID)
VALUES
('Mary', 'Taylor', 1),
('Mary', 'Taylor', 2),
('Mary', 'Taylor', 3),
('Sarah', 'Clark', 4),
('Sarah', 'Clark', 5),
('James', 'Smith', 6),
('James', 'Smith', 7),
('Henry', 'Adams', 8),
('Ivy', 'Johnson', 9),
('Jake', 'White', 10),
('Lily', 'Brown', 11);

INSERT INTO contact_person_phone (phoneNumber, contact_personID)
VALUES
('555-123-4567', 1),
('555-123-4567', 2),
('555-123-4567', 3),
('555-456-7890', 4),
('555-456-7890', 5),
('555-789-0123', 6),
('555-789-0123', 7),
('555-012-3456', 8),
('555-234-5678', 9),
('555-345-6789', 10),
('555-456-7891', 11);





