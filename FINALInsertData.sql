-- Switch to the YMCA database
USE ymca;

INSERT INTO Staff (staffID, fname, lname, phone, email, position, department)
VALUES 
(1, 'James', 'Wilson', '9175551234', 'jwilson@ymca.org', 'Fitness Trainer', 'Wellness'),
(2, 'Emily', 'Chen', '6461237890', 'echen@ymca.org', 'Swim Instructor', 'Aquatics'),
(3, 'Daniel', 'Lopez', '7189994567', 'dlopez@ymca.org', 'Program Director', 'Youth Programs'),
(4, 'Samantha', 'Patel', '3478883456', 'spatel@ymca.org', 'Fitness Trainer', 'Wellness'),
(5, 'Michael', 'Johnson', '9295557890', 'mjohnson@ymca.org', 'Maintenance Tech', 'Facilities'),
(6, 'Ava', 'Martinez', '2123330987', 'amartinez@ymca.org', 'Personal Trainer', 'Wellness'),
(7, 'Robert', 'Lee', '5164447654', 'rlee@ymca.org', 'IT Coordinator', 'Technology'),
(8, 'Sophia', 'Nguyen', '6463217654', 'snguyen@ymca.org', 'Marketing Manager', 'Marketing'),
(9, 'William', 'Brown', '3479991234', 'wbrown@ymca.org', 'Lifeguard', 'Aquatics'),
(10, 'Isabella', 'Davis', '9171112222', 'idavis@ymca.org', 'Childcare Staff', 'Youth Programs'),
(11, 'Steven', 'Hobbs', '9172452422', 'shobbs@ymca.org', 'Front Desk Staff', 'Facilities');



INSERT INTO participant (participantID, fname, mname, lname, addressStreet, addressCity, addressState, addressZip, dob, gender, email, employer, cellPhone, homePhone) VALUES
(1, 'Emily', 'Rose', 'Johnson', '123 Maple St', 'Brooklyn', 'NY', '11201', '1995-06-12', 'Female', 'emily.johnson@example.com', 'YMCA Brooklyn', '7185551234', '7185555678'),
(2, 'Michael', 'James', 'Smith', '456 Oak Ave', 'Queens', 'NY', '11373', '1988-11-25', 'Male', 'michael.smith@example.com', 'Amazon', '3475552345', '3475556789'),
(3, 'Ava', 'Marie', 'Lee', '789 Pine Rd', 'Bronx', 'NY', '10453', '2000-03-08', 'Female', 'ava.lee@example.com', 'Google', '9175553456', '9175557890'),
(4, 'Daniel', 'Christopher', 'Brown', '321 Birch Blvd', 'Manhattan', 'NY', '10027', '1992-07-15', 'Male', 'daniel.brown@example.com', 'Microsoft', '2125554567', '2125558901'),
(5, 'Sophia', 'Grace', 'Martinez', '654 Cedar Ln', 'Staten Island', 'NY', '10301', '1998-09-22', 'Female', 'sophia.martinez@example.com', 'Apple', '6465555678', '6465559012'),
(6, 'William', 'Alexander', 'Davis', '987 Elm St', 'New York', 'NY', '10002', '1990-01-30', 'Male', 'william.davis@example.com', 'Facebook', '9175556789', '9175550123'),
(7, 'Isabella', 'Nicole', 'Clark', '135 Willow Way', 'Queens', 'NY', '11377', '1997-04-18', 'Female', 'isabella.clark@example.com', 'Columbia University', '7185557890', '7185551230'),
(8, 'James', 'Edward', 'Lopez', '246 Spruce Ct', 'Brooklyn', 'NY', '11211', '1985-08-05', 'Male', 'james.lopez@example.com', 'NYU Langone', '3475558901', '3475552340'),
(9, 'Mia', 'Elizabeth', 'Gonzalez', '369 Redwood Dr', 'Bronx', 'NY', '10472', '2002-12-10', 'Female', 'mia.gonzalez@example.com', 'YMCA Bronx', '6465559012', '6465553451'),
(10, 'Benjamin', 'Lee', 'Walker', '741 Aspen Loop', 'Manhattan', 'NY', '10010', '1994-05-27', 'Male', 'benjamin.walker@example.com', 'IBM', '2125550123', '2125554562');


INSERT INTO membership (memberID, participantID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);


INSERT INTO facility (facilityID, facilityName, availability) VALUES
(1, 'Indoor Swimming Pool', 'Available'),
(2, 'Fitness Center', 'Available'),
(3, 'Basketball Court', 'Not Available'),
(4, 'Yoga Studio', 'Available'),
(5, 'Tennis Court', 'Available'),
(6, 'Rock Climbing Wall', 'Not Available'),
(7, 'Dance Room', 'Available'),
(8, 'Sauna', 'Available'),
(9, 'Indoor Track', 'Not Available'),
(10, 'Cycling Studio', 'Available');


INSERT INTO facilityBooking (bookingID, startTime, endTime, reservationDate, bookingDate, price, bookingStatus, creditCardNumber, creditCardCSV, creditCardType, creditCardExpiration, facilityID, participantID) VALUES
(1, '09:00:00', '10:00:00', '2025-04-28', '2025-04-28', 15.00, 'Confirmed', '4111111111111111', '123', 'Visa', '08/26', 1, 1),
(2, '18:00:00', '19:30:00', '2025-04-29', '2025-04-28', 20.00, 'Confirmed', '5500000000000004', '456', 'MasterCard', '02/27', 2, 2),
(3, '14:00:00', '15:00:00', '2025-04-30', '2025-04-27', 10.00, 'Cancelled', '6011000000000004', '789', 'Discover', '11/25', 3, 3),
(4, '17:00:00', '18:30:00', '2025-04-30', '2025-04-27', 18.00, 'Confirmed', '4111111111111111', '321', 'Visa', '09/26', 4, 4),
(5, '10:00:00', '11:00:00', '2025-05-01', '2025-05-01', 12.00, 'Pending', '378282246310005', '111', 'American Express', '12/25', 5, 5),
(6, '15:00:00', '16:00:00', '2025-05-02', '2025-05-01', 17.00, 'Confirmed', '6011111111111117', '555', 'Discover', '03/26', 6, 6),
(7, '08:00:00', '09:30:00', '2025-05-03', '2025-05-03', 22.00, 'Confirmed', '4111111111111111', '999', 'Visa', '01/27', 7, 7),
(8, '13:00:00', '14:00:00', '2025-05-04', '2025-05-04', 14.00, 'Cancelled', '5105105105105100', '222', 'MasterCard', '06/26', 8, 8),
(9, '12:00:00', '13:00:00', '2025-05-05', '2025-05-04', 16.00, 'Confirmed', '4111111111111111', '654', 'Visa', '10/26', 9, 9),
(10, '11:00:00', '12:30:00', '2025-05-06', '2025-05-04', 19.00, 'Pending', '6011000000000004', '333', 'Discover', '08/25', 10, 10);

INSERT INTO donation (
  donationID, amount, donationType, frequency, campaign,
  paymentMethod, bankAccountNumber, bankRoutingNumber, bankName,
  creditCardNumber, creditCardCSV, creditCardType, creditCardExpiration, participantID
) VALUES
(1, 60.00, 'One-Time', 'None', 'YMCA Fitness Boost',
 'Credit Card', NULL, NULL, NULL, '4111111111111111', '123', 'Visa', '11/26', 1),

(2, 120.00, 'Recurring', 'Monthly', 'Youth Sports',
 'Bank Transfer', '111122223333', '021000021', 'Chase Bank', NULL, NULL, NULL, NULL, 2),

(3, 200.00, 'One-Time', 'None', 'Community Programs',
 'Credit Card', NULL, NULL, NULL, '5500000000000004', '456', 'MasterCard', '07/25', 3),

(4, 35.00, 'Recurring', 'Quarterly', 'After School Care',
 'Bank Transfer', '444455556666', '026009593', 'Bank of America', NULL, NULL, NULL, NULL, 4),

(5, 85.00, 'One-Time', 'None', 'Swim Program',
 'Credit Card', NULL, NULL, NULL, '340000000000009', '789', 'American Express', '04/28', 5),

(6, 150.00, 'Recurring', 'Monthly', 'Family Health Drive',
 'Bank Transfer', '999988887777', '031000503', 'Wells Fargo', NULL, NULL, NULL, NULL, 6),

(7, 95.00, 'One-Time', 'None', 'Teen Programs',
 'Credit Card', NULL, NULL, NULL, '6011000000000004', '321', 'Discover', '01/27', 7),

(8, 300.00, 'Recurring', 'Annually', 'YMCA Scholarships',
 'Bank Transfer', '888877776666', '125000024', 'CitiBank', NULL, NULL, NULL, NULL, 8),

(9, 45.00, 'One-Time', 'None', 'Camp Program',
 'Credit Card', NULL, NULL, NULL, '370000000000002', '852', 'American Express', '08/26', 9),

(10, 70.00, 'Recurring', 'Monthly', 'Women’s Empowerment',
 'Bank Transfer', '222233334444', '011000015', 'TD Bank', NULL, NULL, NULL, NULL, 10);    
    

INSERT INTO course (
  programID, programName, contactName, contactEmail, eligibility, courseTime, courseType, location, duration, courseDescription, spotsLeft, dateRange,
  nonMemberPrice, memberPrice, programMemberPrice,
  nonMemberRegOnlineCutoff, memberRegOnlineCutoff, programMemberRegOnlineCutoff,
  nonMemberRegInHouseCutoff, memberRegInHouseCutoff, programMemberRegInHouseCutoff
) VALUES
(1, 'Youth Basketball League', 'Coach Taylor', 'taylor@ymca.org', 'Ages 10–14', '17:00:00', 'Sports', 'YMCA Main Gym', '8 weeks', 'Team-based basketball training and competition.', 20, '2025-05-10 to 2025-07-05', 90.00, 70.00, 60.00, '2025-04-25', '2025-04-27', '2025-04-28', '2025-04-20', '2025-04-22', '2025-04-23'),
(2, 'Beginner Yoga', 'Sara Malik', 'sara.malik@ymca.org', 'All adults 18+', '08:00:00', 'Wellness', 'Studio A', '6 weeks', 'Gentle yoga to build strength and flexibility.', 15, '2025-05-12 to 2025-06-20', 65.00, 45.00, 35.00, '2025-04-28', '2025-04-30', '2025-05-01', '2025-04-24', '2025-04-26', '2025-04-27'),
(3, 'Teen Robotics Camp', 'Daniel Kim', 'daniel.kim@ymca.org', 'Ages 13–17', '14:00:00', 'Technology', 'STEM Lab 2', '4 weeks', 'Hands-on robotics and coding experience.', 12, '2025-05-15 to 2025-06-12', 110.00, 85.00, 70.00, '2025-04-27', '2025-04-29', '2025-04-30', '2025-04-22', '2025-04-24', '2025-04-25'),
(4, 'Swimming for Adults', 'Nina Thompson', 'nina.t@ymca.org', 'Beginners age 18+', '18:30:00', 'Aquatics', 'Indoor Pool', '6 weeks', 'Learn swimming basics in a supportive group.', 10, '2025-05-14 to 2025-06-25', 85.00, 60.00, 50.00, '2025-04-30', '2025-05-01', '2025-05-02', '2025-04-25', '2025-04-26', '2025-04-27'),
(5, 'Creative Writing Workshop', 'Liam O’Connor', 'liam.o@ymca.org', 'High school students', '16:00:00', 'Education', 'Room B204', '5 weeks', 'Unlock your storytelling potential.', 18, '2025-05-16 to 2025-06-20', 70.00, 50.00, 40.00, '2025-04-29', '2025-05-01', '2025-05-02', '2025-04-23', '2025-04-24', '2025-04-25'),
(6, 'Senior Aqua Fitness', 'George Lin', 'george.lin@ymca.org', 'Seniors 60+', '09:30:00', 'Fitness', 'Aquatics Center', '8 weeks', 'Low-impact fitness for active seniors.', 14, '2025-05-11 to 2025-07-06', 60.00, 40.00, 30.00, '2025-04-26', '2025-04-28', '2025-04-29', '2025-04-21', '2025-04-22', '2025-04-23'),
(7, 'Family Zumba', 'Emily Fox', 'emily.fox@ymca.org', 'All ages, family-friendly', '10:30:00', 'Dance', 'Studio B', '3 weeks', 'Fun cardio session for families.', 25, '2025-05-18 to 2025-06-08', 50.00, 35.00, 25.00, '2025-05-01', '2025-05-03', '2025-05-04', '2025-04-27', '2025-04-28', '2025-04-29'),
(8, 'Kids Karate', 'Sensei Ramon', 'ramon@ymca.org', 'Ages 6–12', '11:00:00', 'Martial Arts', 'Dojo Room', '6 weeks', 'Foundations of karate and self-discipline.', 20, '2025-05-09 to 2025-06-20', 75.00, 55.00, 45.00, '2025-04-25', '2025-04-27', '2025-04-28', '2025-04-20', '2025-04-22', '2025-04-23'),
(9, 'Intro to Guitar', 'Chris Rivera', 'chris.rivera@ymca.org', 'Teens and adults', '13:00:00', 'Arts', 'Music Room 3', '4 weeks', 'Beginner acoustic guitar class.', 10, '2025-05-13 to 2025-06-10', 90.00, 70.00, 55.00, '2025-04-30', '2025-05-02', '2025-05-03', '2025-04-24', '2025-04-26', '2025-04-27'),
(10, 'Parent-Child Cooking Class', 'Chef Anna', 'anna.c@ymca.org', 'Ages 5+ with guardian', '15:00:00', 'Culinary', 'YMCA Kitchen', '2 weekends', 'Learn easy, healthy meals together.', 8, '2025-05-17 to 2025-05-31', 100.00, 80.00, 65.00, '2025-05-02', '2025-05-04', '2025-05-05', '2025-04-28', '2025-04-29', '2025-04-30'),
(11, 'Lifeguard Certification', 'Emily Chen', 'echen@ymca.org', 'Ages 16+', '15:00:00', 'Aquatics', 'Acquatics Center', '1 weekend', 'Recieve your Lifeguard Certification.', 8, '2025-05-17 to 2025-05-31', 100.00, 80.00, 65.00, '2025-05-02', '2025-05-04', '2025-05-05', '2025-04-28', '2025-04-29', '2025-04-30');

    INSERT INTO courseRegistration (participantID, programID, bookingDate, creditCardNumber, creditCardCSV, creditCardType, creditCardExpiration) VALUES
(1, 1, '2025-04-28', '4111111111111111', '123', 'Visa', '09/26'),
(2, 2, '2025-04-27', '5500000000000004', '456', 'MasterCard', '12/26'),
(3, 3, '2025-04-29', '6011000000000004', '789', 'Discover', '11/25'),
(4, 4, '2025-04-30', '4111111111111111', '321', 'Visa', '01/27'),
(5, 5, '2025-05-01', '378282246310005', '111', 'American Express', '05/26'),
(6, 6, '2025-05-02', '6011111111111117', '555', 'Discover', '08/25'),
(7, 7, '2025-05-03', '5105105105105100', '999', 'MasterCard', '06/26'),
(8, 8, '2025-05-04', '4111111111111111', '222', 'Visa', '03/26'),
(9, 9, '2025-05-05', '4111111111111111', '654', 'Visa', '02/27'),
(10, 10, '2025-05-06', '6011000000000004', '333', 'Discover', '04/26'),
(8, 11, '2025-05-01', '4111111111111111', '222', 'Visa', '03/26'),
(9, 11, '2025-05-01', '4111111111111111', '654', 'Visa', '02/27'),
(10, 11, '2025-05-01', '6011000000000004', '333', 'Discover', '04/26');


INSERT INTO courseStaff (staffID, programID) VALUES
(1, 1),
(2, 2),
(3, 3), 
(4, 4),
(5, 5),  
(6, 6),  
(7, 7),  
(8, 8), 
(9, 9), 
(10, 10); 

INSERT INTO privateLesson (
  programID, programName, lessonDescription, location, lessonType, eligibility, expiration,
  contactEmail, nonMemberRegOnlineCutoff, memberRegOnlineCutoff, programMemberRegOnlineCutoff,
  nonMemberRegInHouseCutoff, memberRegInHouseCutoff, programMemberRegInHouseCutoff
) VALUES
(301, 'Private Swim Lessons', 'One-on-one instruction focused on improving swim technique and water confidence.', 'YMCA Downtown Pool', 'Aquatics', 'Ages 5+', '2025-08-31',
 'aquatics@ymca.org', '2025-07-20', '2025-07-25', '2025-07-27', '2025-07-15', '2025-07-18', '2025-07-20'),

(302, 'Private Piano Lessons', 'Learn the basics of piano or advance your skills with a certified instructor.', 'YMCA Music Room', 'Arts & Music', 'Ages 6+', '2025-09-15',
 'music@ymca.org', '2025-08-10', '2025-08-15', '2025-08-18', '2025-08-08', '2025-08-12', '2025-08-15'),

(303, 'Basketball Skills Coaching', 'Improve dribbling, shooting, and game IQ with individualized attention.', 'YMCA Indoor Court', 'Sports', 'Ages 10+', '2025-07-31',
 'sports@ymca.org', '2025-06-20', '2025-06-25', '2025-06-28', '2025-06-18', '2025-06-22', '2025-06-25'),

(304, 'Karate Private Training', 'Build self-discipline and confidence in a personalized martial arts session.', 'YMCA Studio A', 'Martial Arts', 'Ages 7+', '2025-10-01',
 'karate@ymca.org', '2025-09-05', '2025-09-10', '2025-09-13', '2025-09-02', '2025-09-07', '2025-09-10'),

(305, 'Creative Writing Coaching', 'Personalized support to develop writing style, storytelling, and grammar.', 'YMCA Learning Center', 'Education', 'Teens & Adults', '2025-08-20',
 'education@ymca.org', '2025-07-30', '2025-08-02', '2025-08-04', '2025-07-28', '2025-07-31', '2025-08-02'),

(306, 'Guitar Lessons', 'Learn chords, strumming, and music theory with an expert instructor.', 'YMCA Music Room', 'Arts & Music', 'Ages 8+', '2025-09-30',
 'music@ymca.org', '2025-09-01', '2025-09-05', '2025-09-07', '2025-08-28', '2025-09-01', '2025-09-03'),

(307, 'Zumba Private Session', 'Customized Zumba routines for your fitness goals and schedule.', 'YMCA Fitness Hall', 'Fitness', 'Teens & Adults', '2025-08-15',
 'fitness@ymca.org', '2025-07-25', '2025-07-28', '2025-07-30', '2025-07-22', '2025-07-26', '2025-07-28'),

(308, 'Yoga Flow One-on-One', 'Private yoga instruction for relaxation, strength, and flexibility.', 'YMCA Wellness Studio', 'Wellness', 'All Ages', '2025-11-01',
 'wellness@ymca.org', '2025-10-05', '2025-10-10', '2025-10-12', '2025-10-02', '2025-10-07', '2025-10-10'),

(309, 'Aqua Fitness Personal Training', 'Low-impact fitness training tailored to individual needs.', 'YMCA Pool', 'Aquatics', 'Seniors & Adults', '2025-09-25',
 'aquatics@ymca.org', '2025-08-30', '2025-09-02', '2025-09-05', '2025-08-27', '2025-08-31', '2025-09-03'),

(310, 'Cooking Skills Workshop', 'One-on-one cooking sessions focusing on healthy meals and techniques.', 'YMCA Kitchen', 'Life Skills', 'Teens & Adults', '2025-12-01',
 'cooking@ymca.org', '2025-11-05', '2025-11-08', '2025-11-10', '2025-11-02', '2025-11-06', '2025-11-08');

INSERT INTO package (
  packageID, packageName, availability, nonMemberPrice, memberPrice, programMemberPrice, programID
) VALUES
(301, 'Swim Package - 5 Sessions', 'Available', 250.00, 200.00, 180.00, 301),
(302, 'Piano Tutoring - 4 Sessions', 'Available', 220.00, 180.00, 160.00, 302),
(303, 'Basketball Coaching - 6 Sessions', 'Limited', 300.00, 240.00, 210.00, 303),
(304, 'Karate Training - 5 Sessions', 'Available', 270.00, 230.00, 200.00, 304),
(305, 'Creative Writing - 3 Sessions', 'Full', 150.00, 120.00, 100.00, 305),
(306, 'Guitar Basics - 5 Sessions', 'Available', 200.00, 170.00, 150.00, 306),
(307, 'Zumba Training - 4 Sessions', 'Available', 180.00, 150.00, 130.00, 307),
(308, 'Yoga Flow - 6 Sessions', 'Limited', 260.00, 210.00, 190.00, 308),
(309, 'Aqua Fitness - 5 Sessions', 'Available', 240.00, 200.00, 180.00, 309),
(310, 'Cooking Skills - 4 Sessions', 'Available', 230.00, 190.00, 170.00, 310);

INSERT INTO privateLessonRegistration (
  participantID, packageID, bookingDate,
  creditCardNumber, creditCardCSV, creditCardType, creditCardExpiration
) VALUES
(1, 301, '2025-04-01', '4111111111111111', '123', 'Visa', '07/26'),
(2, 302, '2025-04-03', '5500000000000004', '456', 'MasterCard', '08/27'),
(3, 303, '2025-04-05', '340000000000009', '789', 'American Express', '12/26'),
(4, 304, '2025-04-07', '4111111111111111', '111', 'Visa', '05/26'),
(5, 305, '2025-04-10', '6011000000000004', '222', 'Discover', '03/27'),
(6, 306, '2025-04-12', '5500000000000004', '333', 'MasterCard', '09/26'),
(7, 307, '2025-04-15', '4111111111111111', '444', 'Visa', '01/27'),
(8, 308, '2025-04-17', '340000000000009', '555', 'American Express', '10/26'),
(9, 309, '2025-04-20', '6011000000000004', '666', 'Discover', '11/27'),
(10, 310, '2025-04-22', '4111111111111111', '777', 'Visa', '08/26');

INSERT INTO lessonStaff (programID, staffID) VALUES
(301, 1),
(302, 2),
(303, 3),
(304, 4),
(305, 5),
(306, 6),
(307, 7),
(308, 8),
(309, 9),
(310, 10),
(301, 2),
(303, 4),
(305, 8),
(308, 5);

INSERT INTO groupFitnessClass (programID, className, location, timeWindow) VALUES
(401, 'Zumba Class', 'YMCA Main Studio', '08:00 AM - 09:00 AM'),
(402, 'Yoga Class', 'YMCA Yoga Room', '09:30 AM - 10:30 AM'),
(403, 'Pilates Class', 'YMCA Main Studio', '11:00 AM - 12:00 PM'),
(404, 'Spinning Class', 'YMCA Cycling Room', '12:30 PM - 01:30 PM'),
(405, 'Cardio Kickboxing Class', 'YMCA Fitness Center', '02:00 PM - 03:00 PM'),
(406, 'Body Pump Class', 'YMCA Main Studio', '03:30 PM - 04:30 PM'),
(407, 'HIIT Class', 'YMCA Fitness Center', '05:00 PM - 06:00 PM'),
(408, 'Dance Fitness Class', 'YMCA Dance Studio', '06:30 PM - 07:30 PM'),
(409, 'Strength Training Class', 'YMCA Weight Room', '08:00 PM - 09:00 PM'),
(410, 'Aqua Aerobics Class', 'YMCA Pool', '09:30 AM - 10:30 AM');

INSERT INTO groupFitnessDates (programID, classDate) VALUES
(401, '2025-07-01'),
(401, '2025-07-06'),
(402, '2025-07-01'),
(402, '2025-07-06'),
(403, '2025-07-01'),
(403, '2025-07-06'),
(404, '2025-07-01'),
(404, '2025-07-06'),
(405, '2025-07-01'),
(405, '2025-07-06');

INSERT INTO groupFitnessRegistration (
  participantID, programID, classDate, bookingDate, creditCardNumber, creditCardCSV, creditCardType, creditCardExpiration
) VALUES
(1, 401, '2025-07-01', '2025-07-01', '4111111111111111', '123', 'Visa', '05/26'),
(2, 402, '2025-07-01', '2025-07-03', '4222222222222222', '456', 'MasterCard', '06/26'),
(3, 403, '2025-07-01', '2025-07-05', '4333333333333333', '789', 'Visa', '07/26'),
(4, 404, '2025-07-01', '2025-07-07', '4444444444444444', '321', 'MasterCard', '08/26'),
(5, 405, '2025-07-01', '2025-07-10', '4555555555555555', '654', 'Visa', '09/26'),
(6, 401, '2025-07-06', '2025-07-12', '4666666666666666', '987', 'Visa', '10/26'),
(7, 402, '2025-07-06', '2025-07-14', '4777777777777777', '432', 'MasterCard', '11/26'),
(8, 403, '2025-07-06', '2025-07-16', '4888888888888888', '765', 'Visa', '12/26'),
(9, 404, '2025-07-06', '2025-07-18', '4999999999999999', '210', 'MasterCard', '01/27'),
(10, 405, '2025-07-06', '2025-07-20', '5000000000000000', '543', 'Visa', '02/27');

INSERT INTO groupFitnessStaff (programID, staffID) VALUES
(401, 1),
(401, 2),
(402, 3),
(402, 4),
(403, 5),
(403, 6),
(404, 7),
(404, 8),
(405, 9),
(405, 10);

INSERT INTO adultSegmentedPrograms (programID, programName, programType, eligibility, programTime, location, programDescription, duration, dateRange, contactName, contactEmail, nonMemberRegOnlineCutoff, memberRegOnlineCutoff, programMemberRegOnlineCutoff, nonMemberRegInHouseCutoff, memberRegInHouseCutoff, programMemberRegInHouseCutoff) VALUES
(201, 'Morning Yoga', 'Fitness', '18+ years', '07:00 AM - 08:00 AM', 'YMCA Main Studio', 'A calming yoga session designed to help participants start their day with balance and focus.', '1 Hour', '2025-06-01 to 2025-06-30', 'Emily Johnson', 'emily.johnson@ymca.org', '2025-05-25', '2025-05-28', '2025-05-27', '2025-06-01', '2025-06-03', '2025-06-02'),
(202, 'Total Body Conditioning', 'Fitness', '18+ years, Intermediate level', '09:00 AM - 10:00 AM', 'YMCA Gym', 'A high-energy class combining cardio, strength, and core exercises to give your entire body a workout.', '1 Hour', '2025-07-01 to 2025-07-31', 'John Smith', 'john.smith@ymca.org', '2025-06-25', '2025-06-27', '2025-06-26', '2025-07-01', '2025-07-03', '2025-07-02'),
(203, 'Water Aerobics', 'Fitness', '18+ years, Comfortable in water', '10:00 AM - 11:00 AM', 'YMCA Pool', 'An invigorating water workout that tones and strengthens muscles while providing a low-impact environment.', '1 Hour', '2025-08-01 to 2025-08-31', 'Sophia Lee', 'sophia.lee@ymca.org', '2025-07-28', '2025-07-30', '2025-07-29', '2025-08-01', '2025-08-03', '2025-08-02'),
(204, 'Spin Class', 'Fitness', '18+ years, Basic fitness level', '11:00 AM - 12:00 PM', 'YMCA Cycling Studio', 'A high-intensity indoor cycling class designed to increase endurance and cardiovascular fitness.', '1 Hour', '2025-09-01 to 2025-09-30', 'Kevin Turner', 'kevin.turner@ymca.org', '2025-08-25', '2025-08-27', '2025-08-26', '2025-09-01', '2025-09-03', '2025-09-02'),
(205, 'Strength Training for Seniors', 'Fitness', '60+ years', '01:00 PM - 02:00 PM', 'YMCA Senior Fitness Room', 'A gentle strength training program aimed at improving muscle tone, joint mobility, and overall physical health for seniors.', '1 Hour', '2025-10-01 to 2025-10-31', 'Lily Adams', 'lily.adams@ymca.org', '2025-09-25', '2025-09-27', '2025-09-26', '2025-10-01', '2025-10-03', '2025-10-02'),
(206, 'Pilates Fundamentals', 'Fitness', '18+ years, No prior experience required', '02:00 PM - 03:00 PM', 'YMCA Pilates Studio', 'A beginner-friendly Pilates class focusing on building core strength, flexibility, and overall body alignment.', '1 Hour', '2025-11-01 to 2025-11-30', 'Rachel Green', 'rachel.green@ymca.org', '2025-10-28', '2025-10-30', '2025-10-29', '2025-11-01', '2025-11-03', '2025-11-02'),
(207, 'Zumba Fitness', 'Fitness', '18+ years', '06:00 PM - 07:00 PM', 'YMCA Dance Studio', 'A fun and lively dance-based workout that helps to improve cardiovascular fitness while having fun.', '1 Hour', '2025-12-01 to 2025-12-31', 'Tom Wilson', 'tom.wilson@ymca.org', '2025-11-25', '2025-11-27', '2025-11-26', '2025-12-01', '2025-12-03', '2025-12-02'),
(208, 'Kickboxing Cardio', 'Fitness', '18+ years, Moderate fitness level', '07:00 PM - 08:00 PM', 'YMCA Martial Arts Studio', 'A dynamic and fun kickboxing class that improves cardiovascular health, builds strength, and increases endurance.', '1 Hour', '2026-01-01 to 2026-01-31', 'Alice Brown', 'alice.brown@ymca.org', '2025-12-28', '2025-12-30', '2025-12-29', '2026-01-01', '2026-01-03', '2026-01-02'),
(209, 'Tai Chi for Stress Relief', 'Wellness', 'All ages', '08:00 AM - 09:00 AM', 'YMCA Wellness Center', 'A peaceful Tai Chi session that teaches slow, deliberate movements to reduce stress and enhance balance.', '1 Hour', '2026-02-01 to 2026-02-28', 'Sophia Lee', 'sophia.lee@ymca.org', '2026-01-28', '2026-01-30', '2026-01-29', '2026-02-01', '2026-02-03', '2026-02-02'),
(210, 'HIIT Bootcamp', 'Fitness', '18+ years, Advanced fitness level', '08:00 AM - 09:00 AM', 'YMCA Gym', 'A high-intensity interval training class to build strength, endurance, and stamina in a short amount of time.', '1 Hour', '2026-03-01 to 2026-03-31', 'David Green', 'david.green@ymca.org', '2026-02-25', '2026-02-27', '2026-02-26', '2026-03-01', '2026-03-03', '2026-03-02');

INSERT INTO adultSegment (segmentID, dateBlock, spotsLeft, nonMemberPrice, memberPrice, programMemberPrice, programID) VALUES
(301, '2025-07-01', 20, 100.00, 75.00, 60.00, 201),
(302, '2025-07-06', 18, 120.00, 90.00, 70.00, 202),
(303, '2025-07-13', 15, 110.00, 85.00, 65.00, 203),
(304, '2025-07-20', 22, 130.00, 95.00, 75.00, 204),
(305, '2025-07-27', 10, 140.00, 100.00, 80.00, 205),
(306, '2025-07-01', 25, 115.00, 85.00, 65.00, 206),
(307, '2025-07-06', 30, 125.00, 95.00, 75.00, 207),
(308, '2025-07-13', 20, 135.00, 105.00, 85.00, 208),
(309, '2025-07-20', 15, 145.00, 110.00, 90.00, 209),
(310, '2025-07-27', 18, 150.00, 115.00, 95.00, 210);

INSERT INTO adultSegmentRegistration (participantID, segmentID, bookingDate, creditCardNumber, creditCardCSV, creditCardType, creditCardExpiration) VALUES
(1, 301, '2025-05-01', '4111111111111111', '123', 'Visa', '05/26'),
(2, 302, '2025-05-02', '4222222222222222', '234', 'MasterCard', '06/26'),
(3, 303, '2025-05-03', '4333333333333333', '345', 'American Express', '07/26'),
(4, 304, '2025-05-04', '4444444444444444', '456', 'Discover', '08/26'),
(5, 305, '2025-05-05', '5555555555555555', '567', 'Visa', '09/26'),
(6, 306, '2025-05-06', '6666666666666666', '678', 'MasterCard', '10/26'),
(7, 307, '2025-05-07', '6777777777777777', '789', 'American Express', '11/26'),
(8, 308, '2025-05-08', '6888888888888888', '890', 'Discover', '12/26'),
(9, 309, '2025-05-09', '6999999999999999', '901', 'Visa', '01/27'),
(10, 310, '2025-05-10', '7000000000000000', '012', 'MasterCard', '02/27');

INSERT INTO adultSegmentStaff (programID, staffID) VALUES
(201, 1),
(202, 2),
(203, 3),
(204, 4),
(205, 5),
(206, 6),
(207, 7),
(208, 8),
(209, 9),
(210, 10);



INSERT INTO dependantInfo (
  dependantID, fname, mname, lname, addressStreet, addressCity, addressState, addressZip, dob, gender, 
  disciplineProtocol, insurancePolicyNumber, insuranceCarrier, physicianPhone, dentistPhone, healthHistory, participantID
) VALUES
(1, 'Liam', 'James', 'Thompson', '123 Elm St', 'Brooklyn', 'NY', '11201', '2015-06-15', 'Male', 
 'Positive reinforcement, time-out if needed', 'NY123456', 'UnitedHealthcare', '7185551234', '7185555678', 'No known conditions', 1),

(2, 'Emma', 'Grace', 'Rodriguez', '456 Oak Ave', 'Queens', 'NY', '11375', '2014-08-22', 'Female',
 'Redirecting behavior, consistent boundaries', 'NY789012', 'Blue Cross Blue Shield', '7185552345', '7185556789', 'Mild asthma', 2),

(3, 'Noah', 'Alexander', 'Chen', '789 Pine Rd', 'Manhattan', 'NY', '10001', '2016-03-10', 'Male',
 'Time-outs followed by discussion', 'NY345678', 'Cigna', '2125553456', '2125557890', 'Peanut allergy', 3),

(4, 'Olivia', 'Marie', 'Singh', '321 Maple Ln', 'Bronx', 'NY', '10463', '2013-11-30', 'Female',
 'Verbal correction and rewards system', 'NY901234', 'Aetna', '7185554567', '7185558901', 'No concerns', 4),

(5, 'Ethan', 'David', 'Ali', '654 Birch Blvd', 'Staten Island', 'NY', '10301', '2015-01-25', 'Male',
 'Behavior chart and parental follow-up', 'NY567890', 'Empire Plan', '3475551234', '3475552345', 'Seasonal allergies', 5),

(6, 'Ava', 'Rose', 'Nguyen', '987 Cedar Ct', 'Brooklyn', 'NY', '11215', '2014-05-19', 'Female',
 'Clear consequences, consistent tone', 'NY678901', 'Oscar Health', '7185553456', '7185554567', 'Lactose intolerance', 6),

(7, 'Lucas', 'Henry', 'Brown', '159 Spruce Way', 'Queens', 'NY', '11368', '2012-09-03', 'Male',
 'Calm discussion and praise system', 'NY789123', 'MetroPlus', '7185555678', '7185556789', 'History of seizures', 7),

(8, 'Mia', 'Isabelle', 'Patel', '753 Willow St', 'Bronx', 'NY', '10452', '2016-12-17', 'Female',
 'Reward-based motivation', 'NY890234', 'HealthFirst', '3475553456', '3475554567', 'No known issues', 8),

(9, 'Aiden', 'Joseph', 'Kim', '246 Aspen Dr', 'Staten Island', 'NY', '10304', '2013-02-14', 'Male',
 'Sticker chart and behavior reminders', 'NY901345', 'EmblemHealth', '7185556789', '7185557890', 'Shellfish allergy', 9),

(10, 'Sophia', 'Elizabeth', 'Martinez', '135 Walnut Pl', 'Manhattan', 'NY', '10002', '2015-10-06', 'Female',
 'Consistent routine and verbal redirection', 'NY012456', 'Fidelis Care', '2125558901', '2125559012', 'Asthma', 10);

INSERT INTO dependantMedications (dependantID, medication) VALUES
(1, 'Albuterol Inhaler'),
(2, 'Claritin'),
(3, 'EpiPen'),
(4, 'None'),
(5, 'Zyrtec'),
(6, 'Lactaid'),
(7, 'Keppra'),
(8, 'None'),
(9, 'EpiPen'),
(10, 'Albuterol Inhaler');

INSERT INTO dependantAllergies (dependantID, allergy) VALUES
(1, 'Peanuts'),
(2, 'None'),
(3, 'Dairy'),
(4, 'Tree Nuts'),
(5, 'Bee Stings'),
(6, 'Shellfish'),
(7, 'None'),
(8, 'Pollen'),
(9, 'Latex'),
(10, 'Eggs');

INSERT INTO dependantImmunizations (dependantID, immunization) VALUES
(1, 'MMR'),
(2, 'Polio'),
(3, 'Hepatitis B'),
(4, 'DTaP'),
(5, 'Varicella'),
(6, 'Influenza'),
(7, 'COVID-19'),
(8, 'Hib'),
(9, 'Rotavirus'),
(10, 'HPV');

INSERT INTO dependantDietaryRestrictions (dependantID, dietRestriction) VALUES
(1, 'Gluten-Free'),
(2, 'Nut Allergy'),
(3, 'Dairy-Free'),
(4, 'Vegetarian'),
(5, 'Vegan'),
(6, 'Lactose Intolerant'),
(7, 'Halal'),
(8, 'Kosher'),
(9, 'Soy-Free'),
(10, 'No Seafood');

INSERT INTO youthSportsProgram (programID, programName, eligibility, location, requirements, ageGroup, seasonYear) VALUES
(201, 'Youth Soccer Fundamentals', 'Open to all members', 'YMCA Main Field', 'Shin guards required', '6-8', 2025),
(202, 'Basketball Basics', 'Open to all', 'YMCA Indoor Gym', 'Non-marking shoes', '7-9', 2025),
(203, 'Junior Tennis', 'Members only', 'YMCA Tennis Courts', 'Racket required', '8-10', 2025),
(204, 'Intro to Swimming', 'Open to all', 'YMCA Aquatics Center', 'Swimsuit and towel', '5-7', 2025),
(205, 'Kids Karate', 'Open to all', 'YMCA Studio B', 'Uniform provided', '6-9', 2025),
(206, 'Youth Flag Football', 'Open to all', 'YMCA Sports Field', 'Mouth guard recommended', '9-11', 2025),
(207, 'Little Gymnasts', 'Members only', 'YMCA Gymnastics Room', 'Leotard or comfortable clothes', '5-6', 2025),
(208, 'Mini Golf Camp', 'Open to all', 'YMCA Outdoor Area', 'Clubs provided', '7-10', 2025),
(209, 'Track and Field Intro', 'Open to all', 'YMCA Track', 'Running shoes', '9-12', 2025),
(210, 'Cheer Basics', 'Members only', 'YMCA Dance Hall', 'Pom-poms provided', '6-8', 2025);

INSERT INTO youthSegment (segmentID, dateBlock, spotsLeft, nonMemberPrice, memberPrice, programMemberPrice, programID) VALUES
(101, '2025-06-01', 12, 200.00, 180.00, 160.00, 201),
(111, '2025-06-16', 10, 200.00, 180.00, 160.00, 201),
(112, '2025-07-01', 8, 210.00, 190.00, 170.00, 201),
(102, '2025-06-16', 10, 200.00, 180.00, 160.00, 202),
(103, '2025-07-01', 8, 210.00, 190.00, 170.00, 203),
(104, '2025-07-01', 12, 210.00, 190.00, 170.00, 203),
(113, '2025-07-16', 15, 220.00, 200.00, 180.00, 204),
(114, '2025-08-01', 14, 200.00, 185.00, 165.00, 205),
(105, '2025-08-01', 9, 200.00, 185.00, 165.00, 205),
(106, '2025-08-16', 11, 190.00, 170.00, 150.00, 206),
(107, '2025-09-01', 14, 230.00, 210.00, 190.00, 207),
(108, '2025-09-16', 10, 195.00, 175.00, 155.00, 208),
(109, '2025-10-01', 7, 225.00, 205.00, 185.00, 209),
(110, '2025-10-16', 13, 215.00, 195.00, 175.00, 210);

INSERT INTO youthSegmentRegistration (dependantID, segmentID, bookingDate, creditCardNumber, creditCardCSV, creditCardType, creditCardExpiration) VALUES
(1, 101, '2025-03-01', '4111111111111111', '123', 'Visa', '05/26'),
(2, 102, '2025-03-05', '5500000000000004', '456', 'MasterCard', '04/26'),
(3, 102, '2025-03-10', '340000000000009', '789', 'Amex', '06/26'),
(3, 103, '2025-03-10', '340000000000009', '789', 'Amex', '06/26'),
(4, 104, '2025-03-15', '6011000000000004', '321', 'Discover', '08/26'),
(5, 104, '2025-03-20', '4111111111111111', '111', 'Visa', '09/26'),
(5, 105, '2025-03-20', '4111111111111111', '111', 'Visa', '09/26'),
(6, 106, '2025-03-25', '5500000000000004', '222', 'MasterCard', '10/26'),
(7, 107, '2025-03-30', '340000000000009', '333', 'Amex', '07/26'),
(8, 108, '2025-04-01', '6011000000000004', '444', 'Discover', '12/26'),
(9, 109, '2025-04-05', '4111111111111111', '555', 'Visa', '11/26'),
(10, 110, '2025-04-10', '5500000000000004', '666', 'MasterCard', '01/26');

INSERT INTO youthSportsStaff (programID, staffID) VALUES
(201, 1),
(202, 2),
(203, 3),
(204, 4),
(205, 5),
(206, 6),
(207, 7),
(208, 8),
(209, 9),
(210, 10);

INSERT INTO summerCamp (programID) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

INSERT INTO summerCampSession (sessionID, sessionName, spotsLeft, sessionLevel, location, experience, trip, campEvent, price, theme, campWeek, startDate, endDate, programID) VALUES
(1, 'Outdoor Exploration', 20, 'Beginner', 'Forest Park, Queens', 'A week of discovering the hidden paths of nature and your outdoor skills!', 'Nature Walk', 'Sports Day', 150.00, 'Adventure', 1, '2025-06-01', '2025-06-07', 1),
(2, 'Mountain Adventure', 15, 'Intermediate', 'Cold Spring Harbor', 'Challenge yourself with exploring new trails, reaching new heights, and learning all about nature!', 'Mountain Hiking', 'Nature Lab', 200.00, 'Nature Exploration', 2, '2025-06-08', '2025-06-14', 2),
(3, 'Coastal Getaway', 30, 'Beginner', 'Long Beach', 'Explore the shore and learn all about the ecosystem!', 'Beach Trip', 'Campfire Night', 180.00, 'Beach Fun', 3, '2025-06-15', '2025-06-21', 3),
(4, 'Wildlife Wonders', 25, 'Beginnner', 'Queens Zoo, Corona Queens', 'Explore the lives of animals through hands-on wildlife education and fun.', 'Zoo Visit', 'Dance Party', 120.00, 'Wildlife', 4, '2025-06-22', '2025-06-28', 4),
(5, 'STEM Explorers',  20, 'Intermediate', 'Garden City', 'Innovate, experiment, and explore the world of science and art.', 'Science Museum', 'Art Exhibition', 140.00, 'Science Exploration', 5, '2025-06-29', '2025-07-05', 5),
(6, 'History Hunter', 15, 'Intermediate', 'Old Bethpage', 'Step back in time to uncover the mysteries and wonders of the past.', 'Historical Sites Tour', 'Movie Night', 160.00, 'History Buffs', 6, '2025-07-06', '2025-07-12', 6),
(7, 'Kitchen Champs', 18, 'Beginner', 'Bayside, Queens', 'The perfect fusion of athletics and culinary arts!', 'Cooking Class', 'Sports Tournament', 130.00, 'Cooking & Sports', 7, '2025-07-13', '2025-07-19', 7),
(8, 'Farm Friends', 10, 'Beginner', 'Riverhead', 'Meet the animals of our beautiful Earth and then come show off your talents!', 'Farm Visit', 'Talent Show', 150.00, 'Farm Life', 8, '2025-07-20', '2025-07-26', 8),
(9, 'Extreme Outdoors', 22, 'Advanced', 'Hempstead Lake State Park', 'Push your limits with adrenaline-pumping outdoor challenges and survival fun.', 'Rock Climbing', 'Campfire Night', 200.00, 'Adventure Sports', 9, '2025-07-27', '2025-08-02', 9),
(10, 'Creative Campers', 30, 'Beginner', 'Huntington', 'Let your imagination run wild with a week of art, music, and self-expression.', 'Arts and Crafts', 'Karaoke Night', 110.00, 'Creative Arts', 10, '2025-08-03', '2025-08-09', 10);

INSERT INTO summerCampStaff (sessionID, staffID) VALUES
(1, 1),
(1, 3),
(1, 5),
(2, 2),
(2, 7),
(3, 3),
(4, 4),
(4, 5),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO holidayCamp (programID, programName, price, campEvent, location, spotsLeft) VALUES
(1, 'Winter Wonderland Camp', 150.00, 'Ice Skating & Snowball Fight', 'New Rochelle YMCA', 20),
(2, 'Spring Break Adventure', 120.00, 'Hiking & Bonfire', 'New Rochelle YMCA', 30),
(3, 'Summer Fun Camp', 200.00, 'Swimming & Water Sports', 'New Rochelle YMCA', 25),
(4, 'Autumn Exploration Camp', 180.00, 'Pumpkin Picking & Hiking', 'New Rochelle YMCA', 15),
(5, 'Holiday Cheer Camp', 160.00, 'Christmas Crafting & Caroling', 'New Rochelle YMCA', 40),
(6, 'New Year’s Eve Camp', 250.00, 'New Year’s Eve Party & Countdown', 'New Rochelle YMCA', 10),
(7, 'Easter Egg Hunt Camp', 130.00, 'Egg Hunt & Bunny Crafts', 'New Rochelle YMCA', 50),
(8, 'Thanksgiving Adventure Camp', 170.00, 'Turkey Hunt & Gratitude Circle', 'New Rochelle YMCA', 35),
(9, 'Halloween Haunted Camp', 140.00, 'Haunted House & Spooky Stories', 'New Rochelle YMCA', 60),
(10, 'Family Fun Holiday Camp', 220.00, 'Family Games & Movie Night', 'New Rochelle YMCA', 45);

INSERT INTO holidayCampDates (programID, dateBlock) VALUES
(1, '2025-12-20'),
(1, '2025-12-21'),
(2, '2025-03-15'),
(2, '2025-03-16'),
(3, '2025-06-01'),
(3, '2025-06-02'),
(4, '2025-10-10'),
(4, '2025-10-11'),
(5, '2025-12-05'),
(5, '2025-12-06');

INSERT INTO holidayCampStaff (programID, staffID, dateOption) VALUES
(1, 1, '2025-12-20'),
(1, 2, '2025-12-21'),
(2, 3, '2025-03-15'),
(2, 4, '2025-03-16'),
(3, 5, '2025-06-01'),
(3, 6, '2025-06-02'),
(4, 7, '2025-10-10'),
(4, 8, '2025-10-11'),
(5, 9, '2025-12-05'),
(5, 10, '2025-12-06');


INSERT INTO holidayCampVolunteer (membershipID, programID, volunteerPosition, dateOption) VALUES
(1, 1, 'Camp Counselor', '2025-12-20'),
(2, 1, 'Activity Leader', '2025-12-21'),
(3, 2, 'Snack Supervisor', '2025-03-15'),
(4, 2, 'Group Leader', '2025-03-16'),
(5, 3, 'Camp Counselor', '2025-06-01'),
(6, 3, 'Activity Leader', '2025-06-02'),
(7, 4, 'Snack Supervisor', '2025-10-10'),
(8, 4, 'Group Leader', '2025-10-11'),
(9, 5, 'Camp Counselor', '2025-12-05'),
(10, 5, 'Activity Leader', '2025-12-06');

INSERT INTO summerCampVolunteer (membershipID, programID, volunteerPosition, sessionOption) VALUES
(1, 1, 'Camp Counselor', 1),
(2, 2, 'Activity Leader', 2),
(3, 3, 'Snack Supervisor', 3),
(4, 4, 'Group Leader', 4),
(5, 5, 'Camp Counselor', 5),
(6, 6, 'Activity Leader', 6),
(7, 7, 'Snack Supervisor', 7),
(8, 8, 'Group Leader', 8),
(9, 9, 'Camp Counselor', 9),
(10, 10, 'Activity Leader', 10);

INSERT INTO youthSummerCampRegistration (dependantID, sessionID, bookingDate, creditCardNumber, creditCardCSV, creditCardType, creditCardExpiration) VALUES
(1, 1, '2025-05-10', '4111111111111111', '123', 'Visa', '08/26'),
(2, 2, '2025-05-12', '5500000000000004', '321', 'MasterCard', '04/27'),
(3, 3, '2025-05-13', '6011000000000004', '456', 'Discover', '11/26'),
(4, 4, '2025-05-14', '4111111111111111', '654', 'Visa', '12/25'),
(5, 5, '2025-05-15', '378282246310005', '987', 'Amex', '01/27'),
(6, 6, '2025-05-16', '4111111111111111', '147', 'Visa', '06/26'),
(7, 7, '2025-05-17', '5500000000000004', '258', 'MasterCard', '10/25'),
(8, 8, '2025-05-18', '6011000000000004', '369', 'Discover', '03/26'),
(9, 9, '2025-05-19', '4111111111111111', '753', 'Visa', '09/27'),
(10, 10, '2025-05-20', '378282246310005', '159', 'Amex', '07/26');

INSERT INTO youthHolidayCampRegistration (dependantID, programID, dateOption, bookingDate, creditCardNumber, creditCardCSV, creditCardType, creditCardExpiration) VALUES
(1, 1, '2025-12-20', '2025-12-15', '4111111111111111', '123', 'Visa', '08/26'),
(2, 1, '2025-12-21', '2025-12-16', '5500000000000004', '321', 'MasterCard', '04/27'),
(3, 2, '2025-03-15', '2025-12-17', '6011000000000004', '456', 'Discover', '11/26'),
(5, 2, '2025-03-15', '2025-12-19', '378282246310005', '987', 'Amex', '01/27'),
(6, 2, '2025-03-16', '2025-12-20', '4111111111111111', '147', 'Visa', '06/26'),
(4, 3, '2025-06-01', '2025-12-18', '4111111111111111', '654', 'Visa', '12/25'),
(5, 3, '2025-06-01', '2025-12-19', '378282246310005', '987', 'Amex', '01/27'),
(6, 3, '2025-06-02', '2025-12-20', '4111111111111111', '147', 'Visa', '06/26'),
(8, 4, '2025-10-11', '2025-12-22', '6011000000000004', '369', 'Discover', '03/26'),
(9, 5, '2025-12-05', '2025-12-23', '4111111111111111', '753', 'Visa', '09/27'),
(10, 5, '2025-12-06', '2025-12-24', '378282246310005', '159', 'Amex', '07/26');

