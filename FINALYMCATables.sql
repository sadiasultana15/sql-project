use ymca;

CREATE TABLE participant (
    participantID INT PRIMARY KEY NOT NULL,
    fname VARCHAR(35),
    mname VARCHAR(35),
    lname VARCHAR(35),
    addressStreet VARCHAR(100),
    addressCity VARCHAR(50),
    addressState VARCHAR(50),
    addressZip CHAR(6),
    dob DATE,
    gender VARCHAR(20),
    email VARCHAR(50),
    employer VARCHAR(100),
    cellPhone CHAR(10),
    homePhone CHAR(10)
);

CREATE TABLE membership (
    memberID INT PRIMARY KEY NOT NULL,
    participantID INT,
    FOREIGN KEY (participantID) REFERENCES participant(participantID)
);

CREATE TABLE donation (
    donationID INT PRIMARY KEY NOT NULL,
    amount DECIMAL(10, 2),
    donationType VARCHAR(50),
    frequency VARCHAR(50),
    campaign VARCHAR(100),
    paymentMethod VARCHAR(50),
    bankAccountNumber VARCHAR(17),
	bankRoutingNumber CHAR(9),
	bankName VARCHAR(35),
	creditCardNumber VARCHAR(19),
	creditCardCSV VARCHAR(4),
	creditCardType VARCHAR(25),
	creditCardExpiration CHAR(5),
    participantID INT,
    FOREIGN KEY (participantID) REFERENCES participant(participantID)
);

CREATE TABLE facility (
    facilityID INT PRIMARY KEY NOT NULL,
    facilityName VARCHAR(100),
    availability TEXT
);

CREATE TABLE facilityBooking (
    bookingID INT PRIMARY KEY NOT NULL,
    startTime TIME,
    endTime TIME,
    reservationDate DATE,
    bookingDate DATE,
    price DECIMAL(10, 2),
    bookingStatus VARCHAR(50),
    creditCardNumber VARCHAR(19),
	creditCardCSV VARCHAR(4),
	creditCardType VARCHAR(25),
	creditCardExpiration CHAR(5),
    facilityID INT,
    participantID INT,
    FOREIGN KEY (facilityID) REFERENCES facility(facilityID),
    FOREIGN KEY (participantID) REFERENCES participant(participantID)
);

CREATE TABLE course (
    programID INT PRIMARY KEY NOT NULL,
    programName VARCHAR(65),
    contactName VARCHAR(75),
    contactEmail VARCHAR(100),
    eligibility TEXT,
    courseTime TIME,
    courseType VARCHAR(50),
    location VARCHAR(100),
    duration VARCHAR(50),
    courseDescription TEXT,
    spotsLeft INT,
    dateRange VARCHAR(50),
    nonMemberPrice DECIMAL(10,2),
    memberPrice DECIMAL(10,2),
    programMemberPrice DECIMAL(10,2),
    nonMemberRegOnlineCutoff DATE,
    memberRegOnlineCutoff DATE,
    programMemberRegOnlineCutoff DATE,
    nonMemberRegInHouseCutoff DATE,
    memberRegInHouseCutoff DATE,
    programMemberRegInHouseCutoff DATE
);

CREATE TABLE courseRegistration (
    participantID INT NOT NULL,
    programID INT NOT NULL,
    bookingDate DATE,
    creditCardNumber VARCHAR(19),
	creditCardCSV VARCHAR(4),
	creditCardType VARCHAR(25),
	creditCardExpiration CHAR(5),
    PRIMARY KEY (participantID, programID),
    FOREIGN KEY (participantID) REFERENCES participant(participantID),
    FOREIGN KEY (programID) REFERENCES course(programID)
);

CREATE TABLE staff (
    staffID INT PRIMARY KEY NOT NULL,
    fname VARCHAR(35),
    lname VARCHAR(35),
    email VARCHAR(50),
    phone CHAR(10),
    position VARCHAR(50),
    department VARCHAR(50)
);

CREATE TABLE courseStaff (
    staffID INT NOT NULL,
    programID INT NOT NULL,
    PRIMARY KEY (staffID, programID),
    FOREIGN KEY (staffID) REFERENCES staff(staffID),
    FOREIGN KEY (programID) REFERENCES course(programID)
);


CREATE TABLE privateLesson (
    programID INT PRIMARY KEY NOT NULL,
    programName VARCHAR(100),
    lessonDescription TEXT,
    location VARCHAR(100),
    lessonType VARCHAR(50),
    eligibility TEXT,
    expiration DATE,
    contactEmail VARCHAR(50),
    nonMemberRegOnlineCutoff DATE,
    memberRegOnlineCutoff DATE,
    programMemberRegOnlineCutoff DATE,
    nonMemberRegInHouseCutoff DATE,
    memberRegInHouseCutoff DATE,
    programMemberRegInHouseCutoff DATE
);

CREATE TABLE package (
    packageID INT PRIMARY KEY NOT NULL,
    packageName VARCHAR(70),
    availability TEXT,
    nonMemberPrice DECIMAL(10,2),
    memberPrice DECIMAL(10,2),
    programMemberPrice DECIMAL(10,2),
    programID INT,
    FOREIGN KEY (programID) REFERENCES privateLesson(programID)
);

CREATE TABLE privateLessonRegistration (
    participantID INT NOT NULL,
    packageID INT NOT NULL,
    bookingDate DATE,
    creditCardNumber VARCHAR(19),
	creditCardCSV VARCHAR(4),
	creditCardType VARCHAR(25),
	creditCardExpiration CHAR(5),
    PRIMARY KEY (participantID, packageID),
    FOREIGN KEY (participantID) REFERENCES participant(participantID),
    FOREIGN KEY (packageID) REFERENCES package(packageID)
);

CREATE TABLE lessonStaff (
    programID INT NOT NULL,
    staffID INT NOT NULL,
    PRIMARY KEY (programID, staffID),
    FOREIGN KEY (programID) REFERENCES privateLesson(programID),
    FOREIGN KEY (staffID) REFERENCES staff(staffID)
);

CREATE TABLE groupFitnessClass (
    programID INT PRIMARY KEY NOT NULL,
    className VARCHAR(70),
    location VARCHAR(100),
    timeWindow VARCHAR(50)
);

CREATE TABLE groupFitnessDates (
    programID INT NOT NULL,
    classDate DATE NOT NULL,
    PRIMARY KEY (programID, classDate),
    FOREIGN KEY (programID) REFERENCES groupFitnessClass(programID)
);

CREATE TABLE groupFitnessRegistration (
    participantID INT NOT NULL,
    programID INT NOT NULL,
    classDate DATE NOT NULL,
    bookingDate DATE,
    creditCardNumber VARCHAR(19),
	creditCardCSV VARCHAR(4),
	creditCardType VARCHAR(25),
	creditCardExpiration CHAR(5),
    PRIMARY KEY (participantID, programID, classDate),
    FOREIGN KEY (participantID) REFERENCES participant(participantID),
    FOREIGN KEY (programID, classDate) REFERENCES groupFitnessDates(programID, classDate)
);

CREATE TABLE groupFitnessStaff (
    programID INT NOT NULL,
    staffID INT NOT NULL,
    PRIMARY KEY (programID, staffID),
    FOREIGN KEY (programID) REFERENCES groupFitnessClass(programID),
    FOREIGN KEY (staffID) REFERENCES staff(staffID)
);

CREATE TABLE adultSegmentedPrograms (
    programID INT PRIMARY KEY NOT NULL,
    programName VARCHAR(100),
    programType VARCHAR(50),
    eligibility TEXT,
    programTime VARCHAR(50),
    location VARCHAR(100),
    programDescription TEXT,
    duration VARCHAR(50),
    dateRange VARCHAR(50),
    contactName VARCHAR(70),
    contactEmail VARCHAR(50),
    nonMemberRegOnlineCutoff DATE,
    memberRegOnlineCutoff DATE,
    programMemberRegOnlineCutoff DATE,
    nonMemberRegInHouseCutoff DATE,
    memberRegInHouseCutoff DATE,
    programMemberRegInHouseCutoff DATE
);

CREATE TABLE adultSegment (
    segmentID INT PRIMARY KEY NOT NULL,
    dateBlock DATE,
    spotsLeft INT,
    nonMemberPrice DECIMAL(10,2),
    memberPrice DECIMAL(10,2),
    programMemberPrice DECIMAL(10,2),
    programID INT,
    FOREIGN KEY (programID) REFERENCES adultSegmentedPrograms(programID)
);

CREATE TABLE adultSegmentRegistration (
    participantID INT NOT NULL,
    segmentID INT NOT NULL,
    bookingDate DATE,
    creditCardNumber VARCHAR(19),
	creditCardCSV VARCHAR(4),
	creditCardType VARCHAR(25),
	creditCardExpiration CHAR(5),
    PRIMARY KEY (participantID, segmentID),
    FOREIGN KEY (participantID) REFERENCES participant(participantID),
    FOREIGN KEY (segmentID) REFERENCES adultSegment(segmentID)
);

CREATE TABLE adultSegmentStaff (
    programID INT NOT NULL,
    staffID INT NOT NULL,
    PRIMARY KEY (programID, staffID),
    FOREIGN KEY (programID) REFERENCES adultSegmentedPrograms(programID),
    FOREIGN KEY (staffID) REFERENCES staff(staffID)
);

CREATE TABLE dependantInfo (
    dependantID INT PRIMARY KEY NOT NULL,
    fname VARCHAR(100),
    mname VARCHAR(100),
    lname VARCHAR(100),
    addressStreet VARCHAR(255),
    addressCity VARCHAR(100),
    addressState VARCHAR(50),
    addressZip CHAR(6),
    dob DATE,
    gender VARCHAR(20),
    disciplineProtocol TEXT,
    insurancePolicyNumber VARCHAR(15),
    insuranceCarrier VARCHAR(35),
    physicianPhone CHAR(10),
    dentistPhone CHAR(10),
    healthHistory TEXT,
    participantID INT,
    FOREIGN KEY (participantID) REFERENCES participant(participantID)
);

CREATE TABLE dependantMedications (
    dependantID INT NOT NULL,
    medication VARCHAR(100) NOT NULL,
    PRIMARY KEY (dependantID, medication),
    FOREIGN KEY (dependantID) REFERENCES dependantInfo(dependantID)
);

CREATE TABLE dependantAllergies (
    dependantID INT NOT NULL,
    allergy VARCHAR(100) NOT NULL,
    PRIMARY KEY (dependantID, allergy),
    FOREIGN KEY (dependantID) REFERENCES dependantInfo(dependantID)
);

CREATE TABLE dependantImmunizations (
    dependantID INT NOT NULL,
    immunization VARCHAR(100) NOT NULL,
    PRIMARY KEY (dependantID, immunization),
    FOREIGN KEY (dependantID) REFERENCES dependantInfo(dependantID)
);

CREATE TABLE dependantDietaryRestrictions (
    dependantID INT NOT NULL,
    dietRestriction VARCHAR(100) NOT NULL,
    PRIMARY KEY (dependantID, dietRestriction),
    FOREIGN KEY (dependantID) REFERENCES dependantInfo(dependantID)
);

CREATE TABLE youthSportsProgram (
    programID INT PRIMARY KEY NOT NULL,
    programName VARCHAR(100),
    eligibility TEXT,
    location VARCHAR(100),
    requirements TEXT,
    ageGroup VARCHAR(50),
    seasonYear YEAR
);

CREATE TABLE youthSegment (
    segmentID INT PRIMARY KEY NOT NULL,
    dateBlock DATE,
    spotsLeft INT,
    nonMemberPrice DECIMAL(10,2),
    memberPrice DECIMAL(10,2),
    programMemberPrice DECIMAL(10,2),
    programID INT,
    FOREIGN KEY (programID) REFERENCES youthSportsProgram(programID)
);

CREATE TABLE youthSegmentRegistration (
    dependantID INT NOT NULL,
    segmentID INT NOT NULL,
    bookingDate DATE,
    creditCardNumber VARCHAR(19),
	creditCardCSV VARCHAR(4),
	creditCardType VARCHAR(25),
	creditCardExpiration CHAR(5),
    PRIMARY KEY (dependantID, segmentID),
    FOREIGN KEY (dependantID) REFERENCES dependantInfo(dependantID),
    FOREIGN KEY (segmentID) REFERENCES youthSegment(segmentID)
);

CREATE TABLE youthSportsStaff (
    programID INT NOT NULL,
    staffID INT NOT NULL,
    PRIMARY KEY (programID, staffID),
    FOREIGN KEY (programID) REFERENCES youthSportsProgram(programID),
    FOREIGN KEY (staffID) REFERENCES staff(staffID)
);

CREATE TABLE summerCamp (
    programID INT PRIMARY KEY NOT NULL
);

CREATE TABLE summerCampSession (
    sessionID INT PRIMARY KEY NOT NULL,
    sessionName VARCHAR(100),
    spotsLeft INT,
    sessionLevel VARCHAR(65),
    location VARCHAR(100),
    experience TEXT,
    trip TEXT,
    campEvent TEXT,
    price DECIMAL(10, 2),
    theme VARCHAR(100),
    campWeek VARCHAR(50),
    startDate DATE,
    endDate DATE,
    programID INT,
    FOREIGN KEY (programID) REFERENCES summerCamp(programID)
);

CREATE TABLE summerCampStaff (
    sessionID INT NOT NULL,
    staffID INT NOT NULL,
    PRIMARY KEY (sessionID, staffID),
    FOREIGN KEY (sessionID) REFERENCES summerCampSession(sessionID),
    FOREIGN KEY (staffID) REFERENCES staff(staffID)
);

CREATE TABLE holidayCamp (
    programID INT PRIMARY KEY NOT NULL,
    programName VARCHAR(100),
    price DECIMAL(10, 2),
    campEvent TEXT,
    location VARCHAR(100),
    spotsLeft INT
);

CREATE TABLE holidayCampDates (
    programID INT NOT NULL,
    dateBlock DATE NOT NULL,
    PRIMARY KEY (programID, dateBlock),
    FOREIGN KEY (programID) REFERENCES holidayCamp(programID)
);

CREATE TABLE holidayCampStaff (
    programID INT NOT NULL,
    staffID INT NOT NULL,
    dateOption DATE NOT NULL,
    PRIMARY KEY (programID, staffID, dateOption),
    FOREIGN KEY (staffID) REFERENCES staff(staffID),
    FOREIGN KEY (programID, dateOption) REFERENCES holidayCampDates(programID, dateBlock)
);

CREATE TABLE holidayCampVolunteer (
    membershipID INT NOT NULL,
    programID INT NOT NULL,
    volunteerPosition VARCHAR(100),
    dateOption DATE NOT NULL,
    PRIMARY KEY (membershipID, programID, dateOption),
    FOREIGN KEY (membershipID) REFERENCES membership(memberID),
    FOREIGN KEY (programID, dateOption) REFERENCES holidayCampDates(programID, dateBlock)
);

CREATE TABLE summerCampVolunteer (
    membershipID INT NOT NULL,
    programID INT NOT NULL,
    volunteerPosition VARCHAR(100),
    sessionOption INT NOT NULL,
    PRIMARY KEY (membershipID, programID, sessionOption),
    FOREIGN KEY (membershipID) REFERENCES membership(memberID),
    FOREIGN KEY (programID) REFERENCES summerCamp(programID),
    FOREIGN KEY (sessionOption) REFERENCES summerCampSession(sessionID)
);

CREATE TABLE youthSummerCampRegistration (
    dependantID INT NOT NULL,
    sessionID INT NOT NULL,
    bookingDate DATE,
    creditCardNumber VARCHAR(19),
	creditCardCSV VARCHAR(4),
	creditCardType VARCHAR(25),
	creditCardExpiration CHAR(5),
    PRIMARY KEY (dependantID, sessionID),
    FOREIGN KEY (dependantID) REFERENCES dependantInfo(dependantID),
    FOREIGN KEY (sessionID) REFERENCES summerCampSession(sessionID)
);

CREATE TABLE youthHolidayCampRegistration (
    dependantID INT NOT NULL,
    programID INT NOT NULL,
    dateOption DATE,
    bookingDate DATE,
    creditCardNumber VARCHAR(19),
	creditCardCSV VARCHAR(4),
	creditCardType VARCHAR(25),
	creditCardExpiration CHAR(5),
    PRIMARY KEY (dependantID, programID, dateOption),
    FOREIGN KEY (dependantID) REFERENCES dependantInfo(dependantID),
    FOREIGN KEY (programID, dateOption) REFERENCES holidayCampDates(programID, dateBlock)
);
