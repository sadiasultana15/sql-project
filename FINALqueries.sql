
-- Query 1
SELECT yhr.dateOption AS 'Date Option', COUNT(yhr.dependantID) AS 'Number of Children Registered'
FROM youthHolidayCampRegistration yhr
JOIN holidayCampDates hcd ON yhr.programID = hcd.programID AND yhr.dateOption = hcd.dateBlock
WHERE hcd.programID = 2
GROUP BY yhr.dateOption;

-- Query 2
SELECT participantID AS 'Donor ID', SUM(amount) AS 'Total Amount Donated'
FROM donation
GROUP BY participantID
ORDER BY SUM(amount) DESC;

-- Query 3
SELECT p.participantID AS 'Donor ID', p.fname AS 'First Name', 
	   p.mname AS 'Middle Name', p.lname as 'Last Name', 
       p.addressStreet AS 'Street Address', p.addressCity as 'City', 
       p.addressState as 'State', p.addressZip as 'Zip',
       m.memberID AS 'Member ID'
FROM participant p
LEFT JOIN membership m ON p.participantID = m.participantID;

-- Query 4
SELECT y.programName AS 'Program Name', 
       COUNT(DISTINCT s.segmentID) AS 'Number of Segments',
       COUNT(r.dependantID) AS 'Total Registered'
FROM youthSportsProgram y
LEFT JOIN youthSegment s ON y.programID = s.programID
LEFT JOIN youthSegmentRegistration r ON s.segmentID = r.segmentID
GROUP BY y.programName;

-- Query 5
SELECT s.staffID AS 'Staff ID', s.fname AS 'First Name', 
s.lname AS 'Last Name', s.position AS 'Position', s.phone AS 'Phone'
FROM staff s
WHERE s.staffID NOT IN (SELECT staffID FROM lessonStaff)
  AND s.staffID NOT IN (SELECT staffID FROM groupFitnessStaff)
  AND s.staffID NOT IN (SELECT staffID FROM youthSportsStaff);
  
-- Query 6
SELECT f.facilityID AS 'Facility ID', f.facilityName AS'Facility Name'
FROM facility f
JOIN facilityBooking b ON f.facilityID = b.facilityID
WHERE b.reservationDate = '2025-4-30';

-- Query 7
SELECT s.sessionID AS 'Summer Camp Session ID', COUNT(sc.staffID) AS 'Number of Staff'
FROM summerCampSession s
LEFT JOIN summerCampStaff sc ON s.sessionID = sc.sessionID
GROUP BY s.sessionID
HAVING COUNT(sc.staffID) < 3;

-- Query 8
SELECT p.fname AS 'First Name', p.lname AS 'Last Name', 
	   p.addressStreet AS 'Street Address', p.addressCity AS 'City', 
       p.addressState AS 'State', p.cellPhone AS 'Cell Phone',
       m.memberID AS 'Member ID'
FROM course c
JOIN courseRegistration r ON c.programID = r.programID
JOIN participant p ON r.participantID = p.participantID
LEFT JOIN membership m ON p.participantID = m.participantID
WHERE c.programName LIKE '%Lifeguard Certification%'
  AND r.bookingDate = '2025-05-01';
  
-- Query 9
SELECT summerCamp.programID AS 'Program ID', summerCampSession.sessionName AS 'Session Name', 
	   summerCampSession.sessionLevel AS 'Session Level', summerCampSession.location AS 'Location',
       summerCampSession.experience AS 'Experience', summerCampSession.theme AS 'Theme', 
       summerCampSession.trip AS 'Trip', summerCampSession.startDate AS 'Start Date',
       summerCampSession.endDate AS 'End Date'
FROM summerCamp, summerCampSession
WHERE summerCamp.programID = summerCampSession.programID;
  
  
-- Query 10: Most Registered Courses
SELECT c.programName AS 'Program Name', COUNT(r.participantID) AS 'Total Registration Count' 
FROM course c
JOIN courseRegistration r ON c.programID = r.programID
GROUP BY c.programName
ORDER BY COUNT(r.participantID) DESC;
  

-- Why this query is useful:

-- This query is really helpful for figuring out which courses are the most popular at the Y. 
-- By counting how many people signed up for each program, we can see which ones are getting the most attention. 
-- For example, if a program like "Lifeguard Certification" has a lot of registrations, it tells us that people are interested in it.
-- Knowing this can help the organization make smart decisions about resources. 
-- If a program is very popular, the Y might want to schedule more classes for that program or even find ways to increase its capacity. 
-- On the other hand, if a program has low registration, they might consider changing it or promoting it more.
-- Overall, it helps the Y make data-driven choices to improve their offerings and meet the needs of more participants.
  
  