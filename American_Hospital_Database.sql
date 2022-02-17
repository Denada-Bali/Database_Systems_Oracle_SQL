CREATE TABLE patient (
    patient_id          NUMBER(10, 0),
    patient_first_name  VARCHAR2(20 CHAR),
    patient_last_name   VARCHAR2(20 CHAR),
    patient_gender      VARCHAR2(10 CHAR),
    patient_address     VARCHAR2(100 CHAR),
    patient_number      VARCHAR2(18 CHAR),
    patient_doctor_code NUMBER(10, 0),
    CONSTRAINT pk_patient_id PRIMARY KEY ( patient_id ),
    CONSTRAINT unique_patient_doctor_code UNIQUE ( patient_doctor_code )
);


CREATE TABLE doctor (
    doctor_code        NUMBER(10, 0),
    doctor_first_name  VARCHAR2(20 CHAR),
    doctor_last_name   VARCHAR2(20 CHAR),
    doctor_gender      VARCHAR2(10 CHAR),
    doctor_address     VARCHAR2(200 CHAR),
    doctor_designation VARCHAR2(30 CHAR),
    doctor_number      VARCHAR2(18 CHAR),
    CONSTRAINT pk_doctor_code PRIMARY KEY ( doctor_code ),
    CONSTRAINT foreign_key_doctor_code FOREIGN KEY ( doctor_code )
        REFERENCES patient ( patient_doctor_code )
);


CREATE TABLE staff (
    staff_id    NUMBER(10, 0),
    department  VARCHAR2(100 CHAR),
--DOCTOR_FIRST_NAME VARCHAR2(20 CHAR),
--DOCTOR_LAST_NAME VARCHAR2(20 CHAR),
--DOCTOR_GENDER VARCHAR2(10 CHAR),
--DOCTOR_ADDRESS VARCHAR2(100 CHAR),
--STAFF_NUMBER VARCHAR2(18 CHAR),
    doctor_code NUMBER(10, 0),
    CONSTRAINT pk_staff_id PRIMARY KEY ( staff_id ),
    CONSTRAINT foreign_key_staff_doctor_code FOREIGN KEY ( doctor_code )
        REFERENCES doctor ( doctor_code )
);


CREATE TABLE visits (
    visit_id    NUMBER(10, 0),
    doctor_code NUMBER(10, 0),
    patient_id  NUMBER(10, 0),
    visit_date  VARCHAR(20),
    visit_time  VARCHAR(20),
    CONSTRAINT primary_key_visit_id PRIMARY KEY ( visit_id ),
    CONSTRAINT foreign_key_visit_doctor_code FOREIGN KEY ( doctor_code )
        REFERENCES doctor ( doctor_code ),
    CONSTRAINT foreign_key_visit_patient_id FOREIGN KEY ( patient_id )
        REFERENCES patient ( patient_id )
);


CREATE TABLE patient_diagnosis (
    diagnosis_id      NUMBER(10, 0),
    diagnosis_details VARCHAR2(200 CHAR),
    diagnosis_remarks VARCHAR2(200 CHAR),
    diagnosis_date    DATE,
    patient_id        NUMBER(10, 0),
    CONSTRAINT pk_patient_diagnosis PRIMARY KEY ( diagnosis_id ),
    CONSTRAINT foreign_key_patient_id FOREIGN KEY ( patient_id )
        REFERENCES patient ( patient_id )
);


CREATE TABLE bill (
    bill_no    INTEGER,
    patient_id NUMBER(10, 0),
--PATIENT_FIRST_NAME VARCHAR2(20 CHAR),
--PATIENT_LAST_NAME VARCHAR2(20 CHAR),
--PATIENT_GENDER VARCHAR2(10 CHAR),
--PATIENT_ADDRESS VARCHAR2(100 CHAR),
--DOCTOR_FIRST_NAME VARCHAR2(20 CHAR),
--DOCTOR_LAST_NAME VARCHAR2(20 CHAR),
    amount     NUMBER(19, 0),
    CONSTRAINT pk_bill PRIMARY KEY ( bill_no ),
    CONSTRAINT foreign_key_bill_patient_id FOREIGN KEY ( patient_id )
        REFERENCES patient ( patient_id )
);


ALTER TABLE patient DROP CONSTRAINT unique_patient_doctor_code;

ALTER TABLE doctor DROP CONSTRAINT foreign_key_doctor_code;



--Create Sequences

CREATE SEQUENCE seqPatient

START WITH 1

INCREMENT BY 1;



--INSERT INTO PATIENT VALUES (PATIENT_ID, PATIENT_FIRST_NAME, PATIENT_LAST_NAME, PATIENT_GENDER, PATIENT_ADDRESS, PATIENT_NUMBER, PATIENT_DOCTOR_CODE);

INSERT INTO patient VALUES (1,'Susan', 'Mavris', 'Female', 'Rruga Pjeter Budi 6 Rruga E Elbasanit', '+355-68-738-1532', 1);

INSERT INTO patient VALUES (2, 'David', 'Austin', 'Male', 'Italy Square Sheshi Italia', '+355-67-748-1567', 2);

INSERT INTO patient VALUES (3, 'Diana', 'Lorentz', 'Female', 'Bulevardi Bajram Curri', '+355-66-839-1832', 2);

INSERT INTO patient VALUES (4, 'Nancy', 'Greenberg', 'Male', 'Rruga Ibrahim Rugova, Tiranë', '+355-67-738-0002', 3);

INSERT INTO patient VALUES (5, 'Daniel', 'Faviet', 'Male', 'Farkë, Tirana', '+355-68-738-1532', 4);

INSERT INTO patient VALUES (6, 'John', 'Chen', 'Male', 'Rruga Abdyl Frasheri Blloku, Tirana', '+355-67-888-0002', 3);

INSERT INTO patient VALUES (7, 'Ismael', 'Sciarra', 'Male', 'Rr. Komuna Parisit, Prane Stadiumit Dinamo', '+355-69-738-6662', 4);

INSERT INTO patient VALUES (8, 'Alexander', 'Khoo', 'Female', 'Rr. Mustafa Matohiti, nr 18, Tirana', '+355-68-777-1555', 5);

INSERT INTO patient VALUES (9, 'Matthew', 'Weiss', 'Male', 'Rruga Abdyl Frasheri Blloku, Tirana', '+355-69-638-1515', 5);

INSERT INTO patient VALUES (10, 'Adam', 'Fripp', 'Male', 'Bulevardi Bajram Curri', '+355-69-777-6222', 1);

INSERT INTO patient VALUES (11, 'Julia', 'Nayer', 'Female', 'Rr. Mustafa Matohiti/ Vila Nr. 2, Tirana', '+355-67-739-1032', 4);

INSERT INTO patient VALUES (12, 'Laura', 'Bissot', 'Female', 'Rruga Kajo Karafili, Tirana', '+355-68-778-1732', 3);

INSERT INTO patient VALUES (13, 'Britney', 'Everett', 'Female', 'Rruga Pjeter Budi 6 Rruga E Elbasanit', '+355-67-778-8832', 3);

INSERT INTO patient VALUES (14,'Samuel', 'McCain', 'Male', 'Italy Square Sheshi Italia', '+355-67-746-6588', 4);

INSERT INTO patient VALUES (15, 'Sarah', 'Bell', 'Female', 'Bulevardi Bajram Curri', '+355-69-888-1831', 3);

INSERT INTO patient VALUES (16, 'Kevin', 'Feeney', 'Male', 'Rruga Ibrahim Rugova, Tiranë', '+355-67-878-0006', 1);

INSERT INTO patient VALUES (17, 'Timothy', 'Gates', 'Male', 'Farkë, Tirana', '+355-68-738-1532', 3);

INSERT INTO patient VALUES (18, 'Randall', 'Perkins', 'Male', 'Rruga Abdyl Frasheri Blloku, Tirana', '+355-67-858-0404', 1);

INSERT INTO patient VALUES (19, 'Anthony', 'Cabrio', 'Male', 'Rr. Komuna Parisit, Prane Stadiumit Dinamo', '+355-69-738-6662', 12);

INSERT INTO patient VALUES (20, 'Julia', 'Dellinger', 'Female', 'Rr. Mustafa Matohiti, nr 18, Tirana', '+355-67-404-1585', 11);

INSERT INTO patient VALUES (21, 'Anthony', 'Cabrio', 'Male', 'Rruga Abdyl Frasheri Blloku, Tirana', '+355-67-848-1315', 4);

INSERT INTO patient VALUES (22, 'Alexis', 'Bull', 'Male', 'Bulevardi Bajram Curri', '+355-67-007-4212', 3);

INSERT INTO patient VALUES (23, 'Nandita', 'Sarchand', 'Female', 'Rr. Mustafa Matohiti/ Vila Nr. 2, Tirana', '+355-68-735-1342', 1);

INSERT INTO patient VALUES (24, 'Martha', 'Sullivan', 'Female', 'Rruga Kajo Karafili, Tirana', '+355-68-978-1722', 3);


--Create Sequences

CREATE SEQUENCE seqDoctor

START WITH 1

INCREMENT BY 1;



--INSERT INTO DOCTOR VALUES (DOCTOR_CODE, DOCTOR_FIRST_NAME, DOCTOR_LAST_NAME, DOCTOR_GENDER, DOCTOR_ADDRESS, DOCTOR_DESIGNATION, DOCTOR_NUMBER);

INSERT INTO doctor VALUES (1, 'Jennifer', 'Whalen', 'Female', 'Rruga Sami Frasheri nr 4 Tirane', 'Cardiologist', '+355-69-694-4452');

INSERT INTO doctor VALUES (2, 'John', 'Russell', 'Male', 'Rruga Abdyl Frasheri Blloku, Tirana', 'Emergency Doctor', '+355-67-744-4555');

INSERT INTO doctor VALUES (3, 'Gerald', 'Cambrault', 'Male', 'Farkë, Tirana', 'Neurosurgeon', '+355-68-654-4652');

INSERT INTO doctor VALUES (4, 'Christopher', 'Olsen', 'Male', 'Rruga Ibrahim Rugova, Tiranë', 'Oncologist', '+355-68-856-4862');

INSERT INTO doctor VALUES (5, 'Oliver', 'Tuvault', 'Male', 'Rruga Bako Dervishaj', 'Neurologist', '+355-69-456-4682');

INSERT INTO doctor VALUES (6, 'Sarath', 'Sewall', 'Female', 'Rr. Mustafa Matohiti/ Vila Nr. 2, Tirana', 'Radiologist', '+355-67-004-4442');

INSERT INTO doctor VALUES (7, 'Clara', 'Vishney', 'Female', 'Rruga Bako Dervishaj', 'Gastroenterologist', '+355-69-690-0052');

INSERT INTO doctor VALUES (8, 'Lisa', 'Ozer', 'Female', 'Rruga Sami Frasheri nr 4 Tirane', 'Dermatologist', '+355-67-658-8757');

INSERT INTO doctor VALUES (9, 'Harrison', 'Bloom', 'Male', 'Rruga Ibrahim Rugova, Tiranë', 'Surgeon', '+355-67-684-4858');

INSERT INTO doctor VALUES (10, 'Tayler', 'Fox', 'Female', 'Rruga Abdyl Frasheri Blloku, Tirana', 'Gynecologist', '+355-6767-47190');

INSERT INTO doctor VALUES (11, 'William', 'Smith', 'Male', 'Rruga Sami Frasheri nr 4 Tirane', 'Rheumatologist', '+355-68-884-4411');

INSERT INTO doctor VALUES (12, 'Elizabeth', 'Bates', 'Female', 'Farkë, Tirana', 'Pediatrician', '+355-67-699-4666');

INSERT INTO doctor VALUES (13, 'Jennifer', 'Dilly', 'Female', 'Rruga Abdyl Frasheri Blloku, Tirana', 'Nephrologist', '+355-67-000-8888');




--Create Sequences

CREATE SEQUENCE seqStaff

START WITH 1

INCREMENT BY 1;




--INSERT INTO STAFF VALUES (STAFF_ID, DEPARTMENT, DOCTOR_CODE);

INSERT INTO staff VALUES (1, 'Cardiology', 1);

INSERT INTO staff VALUES (2, 'Emergency', 2);

INSERT INTO staff VALUES (3, 'Neurosurgery', 3);

INSERT INTO staff VALUES (4, 'Oncology', 4);

INSERT INTO staff VALUES (5, 'Neurology', 5);

INSERT INTO staff VALUES (6, 'Radiology', 6);

INSERT INTO staff VALUES (7, 'Gastroenterology', 7);

INSERT INTO staff VALUES (8, 'Dermatology', 8);

INSERT INTO staff VALUES (9, 'General Surgery', 9);

INSERT INTO staff VALUES (10, 'Maternity', 10);

INSERT INTO staff VALUES (11, 'Rheumatology', 11);

INSERT INTO staff VALUES (12, 'Pediatrics', 12);

INSERT INTO staff VALUES (13, 'Nephrology', 13);



--Create Sequences

CREATE SEQUENCE seqVisits

START WITH 1

INCREMENT BY 1;




--INSERT INTO VISITS VALUES (VISIT_ID, DOCTOR_CODE, PATIENT_ID, VISIT_DATE, VISIT_TIME);

--INSERT INTO VISITS VALUES (1, 1, 1, SYSDATE , TO_CHAR( SYSDATE, 'HH:MI AM'));

INSERT INTO visits VALUES (1, 1, 1, sysdate, '11:30 AM');

INSERT INTO visits VALUES (2, 2, 2, sysdate + 70, '10:00 AM');

INSERT INTO visits VALUES (3, 2, 3, sysdate + 3, '12:00 PM');

INSERT INTO visits VALUES (4, 3, 4, sysdate + 50,'01:00 PM');

INSERT INTO visits VALUES (5, 4, 5, sysdate + 3, '09:00 AM');

INSERT INTO visits VALUES (6, 3, 6, sysdate, '10:30 AM');

INSERT INTO visits VALUES (7, 4, 7, sysdate + 40, '02:00 PM');

INSERT INTO visits VALUES (8, 5, 8, sysdate, '04:15 PM');

INSERT INTO visits VALUES (9, 5, 9, sysdate, '03:20 PM');

INSERT INTO visits VALUES (10, 1, 10, sysdate + 30, '10:30 AM');

INSERT INTO visits VALUES (11, 4, 11, sysdate, '09:30 AM');

INSERT INTO visits VALUES (12, 3, 12, sysdate + 3, '02:00 PM');

INSERT INTO visits VALUES (13, 3, 13, sysdate, '11:00 AM');

INSERT INTO visits VALUES (14, 4, 14, sysdate + 66, '10:00 AM');

INSERT INTO visits VALUES (15, 9, 15, sysdate, '12:00 PM');

INSERT INTO visits VALUES (16, 10, 16, sysdate + 39, '04:20 PM');

INSERT INTO visits VALUES (17, 6, 17, sysdate, '09:40 AM');

INSERT INTO visits VALUES (18, 7, 18, sysdate + 100, '01:00 PM');

INSERT INTO visits VALUES (19, 12, 19, sysdate + 365, '02:00 PM');

INSERT INTO visits VALUES (20, 11, 20, sysdate + 4, '03:00 PM');

INSERT INTO visits VALUES (21, 4, 21, sysdate, '05:00 PM');

INSERT INTO visits VALUES (22, 6, 22, sysdate + 2, '11:30 AM');

INSERT INTO visits VALUES (23, 10, 23, sysdate + 3, '10:00 AM');

INSERT INTO visits VALUES (24, 13, 24, sysdate + 5, '05:00 PM');



--Create Sequences

CREATE SEQUENCE seqPatient_diagnosis

START WITH 1

INCREMENT BY 1;




--INSERT INTO PATIENT_DIAGNOSIS VALUES (DIAGNOSIS_ID, DIAGNOSIS_DETAIL, DIAGNOSIS_REMARK, DIAGNOSIS_DATE, PATIENT_ID);

INSERT INTO patient_diagnosis VALUES (1, 'Suffering from congenital heart disease', 'Surgery needs to be used', sysdate + 3, 1);

INSERT INTO patient_diagnosis VALUES (2, 'Suffering from migrane', 'Needed to use some medication and stress should be avoided', sysdate + 73, 2);

INSERT INTO patient_diagnosis VALUES (3, 'Suffers from appendicitis', 'Sudden pain that begins on the right side of the lower abdomen. Surgical removal of the appendix is needed ', sysdate + 4, 3);

INSERT INTO patient_diagnosis VALUES (4, 'Sufering from meningioma tumor', 'Surgery needs to be used', sysdate + 52, 4);

INSERT INTO patient_diagnosis VALUES (5, 'Suffers from acute myeloid leukemia', 'Need to use chemotherapy, radiation therapy, stem cell transplant', sysdate + 4, 5);

INSERT INTO patient_diagnosis VALUES (6, 'Sufering from nerve sheath tumor', 'Treated with surgery', sysdate, 6);

INSERT INTO patient_diagnosis VALUES (7, 'Suffering from congenital heart disease', 'diagnos remark', sysdate + 41, 7);

INSERT INTO patient_diagnosis VALUES (8, 'Suffering from epilepsy', 'Need to use Anti-seizure medications: To reduce the frequency and intensity of seizures', sysdate + 2, 8);

INSERT INTO patient_diagnosis VALUES (9, 'Suffering from parkinson’s disease', 'Advanced case, need to use surgery', sysdate, 9);

INSERT INTO patient_diagnosis VALUES (10, 'Abnormal heart rhythms, or arrhythmias', 'Electrocardiogram to diagnose heart arrhythmias', sysdate + 32, 10);

INSERT INTO patient_diagnosis VALUES (11, 'Suffers from lung cancer', 'Need to use chemotherapy', sysdate + 5, 11);

INSERT INTO patient_diagnosis VALUES (12, 'Sufering from meningioma tumor', 'Surgery needs to be used', sysdate + 4, 12);

INSERT INTO patient_diagnosis VALUES (13, 'Sufering from nerve sheath tumor', 'Treated with surgery', sysdate, 13);

INSERT INTO patient_diagnosis VALUES (14, 'Suffering from liver cancer', 'Need to use chemotherapy', sysdate + 66, 14);

INSERT INTO patient_diagnosis VALUES (15, 'Suffers  myocardial infarction', 'Need for percutaneous coronary intervention', sysdate + 1, 15);

INSERT INTO patient_diagnosis VALUES (16, 'Affected by coronavirus', 'Intensive care, kidney failure ', sysdate + 40, 16);

INSERT INTO patient_diagnosis VALUES (17, 'Affected by coronavirus', 'Intensive care, suffers from pneumonia', sysdate + 1, 17);

INSERT INTO patient_diagnosis VALUES (18, 'Suffering from meningitis', 'Need to use antibiotics', sysdate + 105, 18);

INSERT INTO patient_diagnosis VALUES (19, 'Abnormal temperature', 'Antibiotic treatment', sysdate + 365, 19);

INSERT INTO patient_diagnosis VALUES (20, 'Suffering from osteoporosis', 'Need to use supplements: To improve bone health.', sysdate + 4, 20);

INSERT INTO patient_diagnosis VALUES (21, 'Suffering from stomach cancer', 'Need to use chemotherapy', sysdate + 2, 21);

INSERT INTO patient_diagnosis VALUES (22, 'Affected by coronavirus', 'Intensive care, suffers from pneumonia', sysdate + 3, 22);

INSERT INTO patient_diagnosis VALUES (23, 'Affected by coronavirus', 'Intensive care, need for intubation', sysdate + 3, 23);

INSERT INTO patient_diagnosis VALUES (24, 'Spinal cord injury', 'Surgery needs to be used', sysdate + 8, 24);



--Create Sequences

CREATE SEQUENCE seqBill

START WITH 1

INCREMENT BY 1;




--INSERT INTO BILL VALUES (BILL_NO, PATIENT_ID, AMOUNT);

INSERT INTO bill VALUES (1, 1, 13000);

INSERT INTO bill VALUES (2, 2, 24000);

INSERT INTO bill VALUES (3, 3, 24000);

INSERT INTO bill VALUES (4, 4, 12008);

INSERT INTO bill VALUES (5, 5, 11000);

INSERT INTO bill VALUES (6, 6, 12008);

INSERT INTO bill VALUES (7, 7, 11000);

INSERT INTO bill VALUES (8, 8, 13500);

INSERT INTO bill VALUES (9, 9, 13500);

INSERT INTO bill VALUES (10, 10, 13000);

INSERT INTO bill VALUES (11, 11, 11000);

INSERT INTO bill VALUES (12, 12, 12008);

INSERT INTO bill VALUES (13, 13, 12008);

INSERT INTO bill VALUES (14, 14, 11000);

INSERT INTO bill VALUES (15, 15, 11500);

INSERT INTO bill VALUES (16, 16, 10000);

INSERT INTO bill VALUES (17, 17, 10500);

INSERT INTO bill VALUES (18, 18, 13500);

INSERT INTO bill VALUES (19, 19, 12000);

INSERT INTO bill VALUES (20, 20, 10000);

INSERT INTO bill VALUES (21, 21, 11000);

INSERT INTO bill VALUES (22, 22, 10500);

INSERT INTO bill VALUES (23, 23, 10000);

INSERT INTO bill VALUES (24, 24, 13500);


--COMMAND TO DROP TABLE

DROP TABLE patient;


--COMMAND TO DELETE ALL VALUES FROM TABLE

DELETE PATIENT;


--COMMAND TO DELETE VALUE BY ID

DELETE FROM patient
WHERE
    patient_id = 1;


--COMMAND TO UPDATE VALUE BY ID

UPDATE patient
SET
    patient_address = 'Rr. Komuna Parisit, Prane Stadiumit Dinamo'
WHERE
    patient_id = 7;
    
    
--Query

SELECT p.patient_first_name||' '||p.patient_last_name AS "Patient Name",p.patient_gender AS "Patient Gender",p.patient_number AS "Phone Number" , b.amount AS "Patient Amount"
FROM patient p LEFT JOIN bill b ON p.patient_id = b.patient_id ;



SELECT d.doctor_first_name||' '||d.doctor_last_name AS "Doctor",d.doctor_gender AS "Doctor Gender", d.doctor_designation AS "Doctor Designation", d.doctor_number AS "Phone Number" , s.department AS "Hospital Department"
FROM doctor d LEFT JOIN staff s ON d.doctor_code = s.doctor_code ;

