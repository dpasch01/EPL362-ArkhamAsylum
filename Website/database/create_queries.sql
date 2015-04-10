CREATE TABLE `PATIENT` (
	id INT NOT NULL PRIMARY KEY, 
	firstname VARCHAR(20) NOT NULL,
    relative_email TEXT NOT NULL,
	lastname VARCHAR(20) NOT NULL,
    address TEXT NOT NULL,
	phonenumber TEXT NOT NULL, 
	birthday DATE NOT NULL, 
	gender ENUM('M', 'F') NOT NULL
);

CREATE TABLE DECEASED(
    id INT NOT NULL PRIMARY KEY
);  

ALTER TABLE `DECEASED`
ADD FOREIGN KEY (`id`)
REFERENCES `PATIENT`(id);

CREATE TABLE REQUEST(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    patient INT NOT NULL,
    `date` DATE NOT NULL
);  

ALTER TABLE `REQUEST`
ADD FOREIGN KEY (`patient`)
REFERENCES `PATIENT`(id);

CREATE TABLE `USER` (
	id INT NOT NULL PRIMARY KEY, 
	firstname VARCHAR(20) NOT NULL,
	lastname VARCHAR(20) NOT NULL,
    email VARCHAR(60) NOT NULL, 
	phonenumber TEXT NOT NULL,
    username VARCHAR(20) NOT NULL,
    `password` TEXT NOT NULL,
    `type` ENUM ('CLINICAL_STAFF','RECEPTIONIST','MEDICAL_RECORD_STAFF','HEALTH_SERVICE_MANAGEMENT')
);

CREATE TABLE `CLINICAL_STAFF` (
	id INT NOT NULL, 
    `profession` ENUM ('DOCTOR','NURSE','OTHER')
);

ALTER TABLE `CLINICAL_STAFF`
ADD FOREIGN KEY (`id`)
REFERENCES `USER`(id);

CREATE TABLE `COMMENT` (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	content TEXT NOT NULL,
    patient	INT NOT NULL,
    clinician INT NOT NULL,
    `date` DATE NOT NULL
);

ALTER TABLE `COMMENT`
ADD FOREIGN KEY (`patient`)
REFERENCES `PATIENT`(id);

ALTER TABLE `COMMENT`
ADD FOREIGN KEY (`clinician`)
REFERENCES `USER`(id);

CREATE TABLE `MEDICINE` (
    `name` VARCHAR(15) NOT NULL PRIMARY KEY,
	description TEXT NOT NULL
);

CREATE TABLE `SIDE_EFFECT` (
	medicine VARCHAR(15) NOT NULL, 
	side_effect TEXT NOT NULL
);

ALTER TABLE `SIDE_EFFECT`
ADD FOREIGN KEY (`medicine`)
REFERENCES `MEDICINE`(name);

CREATE TABLE `CONSULTANT` (
	clinician INT NOT NULL, 
	patient INT NOT NULL
);

ALTER TABLE `CONSULTANT`
ADD FOREIGN KEY (`patient`)
REFERENCES `PATIENT`(id);

ALTER TABLE `CONSULTANT`
ADD FOREIGN KEY (`clinician`)
REFERENCES `USER`(id);

CREATE TABLE `WARNING_OVERRULED` (
	clinician INT NOT NULL, 
	warning TEXT NOT NULL,
    `date` DATE NOT NULL
);

ALTER TABLE `WARNING_OVERRULED`
ADD FOREIGN KEY (`clinician`)
REFERENCES `USER`(id);

CREATE TABLE `MEDICAL_RECORD` (
	patient INT NOT NULL,
    last_updated DATE NOT NULL,
    `status` ENUM ('DANGEROUS','NOT_DANGEROUS') NOT NULL
);

ALTER TABLE `MEDICAL_RECORD`
ADD FOREIGN KEY (`patient`)
REFERENCES `PATIENT`(id);

CREATE TABLE `TREATMENT` (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	`condition` TEXT NOT NULL,
    medicine VARCHAR(15) NOT NULL,
    quantity INT NOT NULL
);

ALTER TABLE `TREATMENT`
ADD FOREIGN KEY (`medicine`)
REFERENCES `MEDICINE`(name);

CREATE TABLE `INCIDENT` (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	patient INT NOT NULL,
    details TEXT NOT NULL,
    type ENUM ('INCIDENT','THREAT') 
);

ALTER TABLE `INCIDENT`
ADD FOREIGN KEY (`patient`)
REFERENCES `PATIENT`(id);

CREATE TABLE `INCIDENT_BY_PRESCRIPTION` (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	patient INT NOT NULL,
    details TEXT NOT NULL
);

ALTER TABLE `INCIDENT_BY_PRESCRIPTION`
ADD FOREIGN KEY (`patient`)
REFERENCES `PATIENT`(id);

CREATE TABLE `CLINIC`(
    name VARCHAR(20) NOT NULL PRIMARY KEY 
);

CREATE TABLE `APPOINTMENT` (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	`date` DATE NOT NULL,
    patient	INT NOT NULL,
    clinician INT NOT NULL,
    clinic VARCHAR(20) NOT NULL,
    `time` TIME NOT NULL,
    `type` ENUM('PRE_ARRANGED','DROP_IN') NOT NULL,
    `status` ENUM('SHOW_UP','NOT_SHOW_UP')
);

ALTER TABLE `APPOINTMENT`
ADD FOREIGN KEY (`patient`)
REFERENCES `PATIENT`(id);

ALTER TABLE `APPOINTMENT`
ADD FOREIGN KEY (`clinic`)
REFERENCES `CLINIC`(name);

ALTER TABLE `APPOINTMENT`
ADD FOREIGN KEY (`clinician`)
REFERENCES `USER`(id);