1. insert into dept 
SQL> INSERT INTO DEPARTMENT1
  2  (DEPT_ID, DEPT_NAME, OFFICE_LOCATION, CONTACT_NUMBER, HODID)
  3  VALUES
  4  ('D01', 'Computer Science', 'Carmel Block', 9876543210, NULL);

1 row created.

SQL> INSERT INTO FACULTY1
  2  (FACULTY_ID, FACULTY_NAME, QUALIFICATION, DESIGNATION,
  3  JOINING_DATE, SALARY, EMAIL_ID, DEPT_ID)
  4  VALUES
  5  ('F101', 'Meera Joseph', 'PhD', 'Assistant Professor',
  6  TO_DATE('01-06-2022','DD-MM-YYYY'),
  7  55000, 'meera@rajagiri.edu', 'D01');

1 row created.

SQL> UPDATE DEPARTMENT1
  2  SET HODID = 'F101'
  3  WHERE DEPT_ID = 'D01';

1 row updated.

SQL>
SQL> COMMIT;

Commit complete.


SQL> UPDATE DEPARTMENT1
  2  SET HODID = 'F101'
  3  WHERE DEPT_ID = 'D01';

1 row updated.

SQL>
SQL> COMMIT;

Commit complete.
SQL> select * from department1;

DEPT_ID    DEPT_NAME                      OFFICE_LOCATION
---------- ------------------------------ -------------------------
CONTACT_NUMBER HODID
-------------- -------------------------
D01        Computer Science               Carmel Block
    9876543210 F101

q2.
SQL> INSERT INTO DEPARTMENT1
  2  (DEPT_ID, DEPT_NAME, OFFICE_LOCATION)
  3  VALUES
  4  ('D02', 'Electronics', 'Science Block');

1 row created.

SQL>
SQL> COMMIT;

Commit complete.

q3.
SQL> INSERT INTO DEPARTMENT1
  2  (DEPT_ID, DEPT_NAME, OFFICE_LOCATION, CONTACT_NUMBER)
  3  VALUES
  4  ('D03', 'Mathematics', 'North Block', 9876501111);

1 row created.

SQL>
SQL> INSERT INTO DEPARTMENT1
  2  (DEPT_ID, DEPT_NAME, OFFICE_LOCATION, CONTACT_NUMBER)
  3  VALUES
  4  ('D04', 'Physics', 'East Block', 9876502222);

1 row created.

SQL>
SQL> INSERT INTO DEPARTMENT1
  2  (DEPT_ID, DEPT_NAME, OFFICE_LOCATION, CONTACT_NUMBER)
  3  VALUES
  4  ('D05', 'Commerce', 'South Block', 9876503333);

1 row created.

q4.
SQL> INSERT INTO STUDENT1
  2  (STUDENT_ID, STUDENT_NAME, DOB, GENDER, MOBILE_NUMBER,
  3   EMAIL_ID, DEPT_ID, ADMISSION_DATE, CGPA)
  4  VALUES
  5  ('S101','Akhil Raj',
  6  TO_DATE('15-08-2005','DD-MM-YYYY'),
  7  'm',
  8  9876501234,
  9  'akhil@gmail.com',
 10  'D01',
 11  SYSDATE,
 12  8.2);

1 row created.

SQL>
SQL> COMMIT;

Commit complete.
q5.
SQL> INSERT INTO STUDENT1
  2  (STUDENT_ID, STUDENT_NAME, DOB, GENDER, MOBILE_NUMBER,
  3   EMAIL_ID, DEPT_ID, ADMISSION_DATE)
  4  VALUES
  5  ('S102','Arun Kumar',
  6  TO_DATE('20-01-2005','DD-MM-YYYY'),
  7  'm',
  8  9876545678,
  9  'arun@gmail.com',
 10  'D01',
 11  SYSDATE);

1 row created.

SQL>
SQL> COMMIT;

Commit complete.
q6.
INSERT INTO STUDENT1
(STUDENT_ID, STUDENT_NAME, DOB, GENDER, MOBILE_NUMBER,
 EMAIL_ID, DEPT_ID, ADMISSION_DATE, CGPA)
VALUES
('S103','Anjali Nair',
TO_DATE('12-03-2005','DD-MM-YYYY'),
'f',
9876512345,
'anjali@gmail.com',
'D01',
SYSDATE,
9.4);

COMMIT;
q7.
SQL> INSERT ALL
  2    INTO FACULTY1
  3    (FACULTY_ID,FACULTY_NAME,QUALIFICATION,DESIGNATION,JOINING_DATE,SALARY,EMAIL_ID,DEPT_ID)
  4    VALUES ('F102','Rahul Menon','M.Tech','Assistant Professor',
  5            TO_DATE('15-07-2021','DD-MM-YYYY'),
  6            50000,'rahul@rajagiri.edu','D01')
  7    INTO FACULTY1
  8    (FACULTY_ID,FACULTY_NAME,QUALIFICATION,DESIGNATION,JOINING_DATE,SALARY,EMAIL_ID,DEPT_ID)
  9    VALUES ('F103','Anitha Nair','PhD','Professor',
 10            TO_DATE('10-06-2020','DD-MM-YYYY'),
 11            70000,'anitha@rajagiri.edu','D02')
 12  SELECT * FROM DUAL;

q8.
SQL> INSERT INTO FACULTY1
  2  (FACULTY_ID, FACULTY_NAME, QUALIFICATION, DESIGNATION,
  3  JOINING_DATE, SALARY, EMAIL_ID, DEPT_ID)
  4  VALUES
  5  ('F101', 'Meera Joseph', 'PhD', 'Assistant Professor',
  6  TO_DATE('01-06-2022','DD-MM-YYYY'),
  7  55000,
  8  'meera@rajagiri.edu',
  9  'D01');
INSERT INTO FACULTY1
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.FACIDCON) violated

q9.
SQL> INSERT INTO COURSE1
  2  (COURSE_ID, COURSE_NAME, CREDITS, SEMESTER, DEPT_ID, FACULTY_ID)
  3  VALUES
  4  ('C101', 'DBMS', 4, 3, 'D01', 'F101');

1 row created.
q10.
SQL> INSERT INTO COURSE1
  2  VALUES
  3  ('C102', 'Operating Systems', 4, 3, 'D01', 'F102');

1 row created.

SQL>
SQL> COMMIT;

Commit complete.

q11
INSERT INTO ENROLLMENT1
(ENROLLMENT_ID, STUDENT_ID, COURSE_ID, ACADEMIC_YEAR)
VALUES
('E101', 'S101', 'C101', '2026-2027');

COMMIT;

q12

SQL> INSERT INTO RESULT1
  2  (RESULT_ID, ENROLLMENT_ID, INTERNAL_MARKS, EXTERNAL_MARKS, TOTAL_MARKS)
  3  VALUES
  4  ('R101', 'E101', 28, 45, 28 + 45);

1 row created.

SQL>
SQL> COMMIT;

Commit complete.
q13
INSERT INTO EVENT1
(EVENT_ID, EVENT_NAME, EVENT_DATE, VENUE, FACULTY_ID, MAX_PARTICIPANTS, REGISTRATION_FEE)
VALUES
('EV101','Tech Fest',TO_DATE('15-08-2026','DD-MM-YYYY'),'Main Auditorium','F101',100,500);

INSERT INTO EVENT1
(EVENT_ID, EVENT_NAME, EVENT_DATE, VENUE, FACULTY_ID, MAX_PARTICIPANTS, REGISTRATION_FEE)
VALUES
('EV102','Sports Day',TO_DATE('20-09-2026','DD-MM-YYYY'),'College Ground','F102',200,0);

INSERT INTO EVENT1
(EVENT_ID, EVENT_NAME, EVENT_DATE, VENUE, FACULTY_ID, MAX_PARTICIPANTS, REGISTRATION_FEE)
VALUES
('EV103','Cultural Fest',TO_DATE('10-10-2026','DD-MM-YYYY'),'Open Stage','F103',150,300);

COMMIT;
q14
SQL> INSERT INTO EVENT_REGISTRATION1
  2  (REGISTRATION_ID,
  3   EVENT_ID,
  4   STUDENT_ID,
  5   REGISTRATION_DATE,
  6   PARTICIPATION_STATUS)
  7  VALUES
  8  ('ER101',
  9   'EV101',
 10   'S101',
 11   SYSDATE,
 12   'REGISTERED');

1 row created.

SQL>
SQL> COMMIT;

Commit complete.

q15
SQL> CREATE TABLE HIGH_CGPA_STUDENTS AS
  2  SELECT *
  3  FROM STUDENT1
  4  WHERE 1 = 0;

Table created.

SQL> desc HIGH_CGPA_STUDENTS;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUDENT_ID                                         VARCHAR2(20)
 STUDENT_NAME                                       VARCHAR2(25)
 DOB                                                DATE
 GENDER                                             CHAR(1)
 MOBILE_NUMBER                                      NUMBER
 EMAIL_ID                                           VARCHAR2(25)
 DEPT_ID                                            VARCHAR2(30)
 ADMISSION_DATE                                     DATE
 CGPA                                               NUMBER



UPDATE 
q16
SQL> UPDATE STUDENT1
  2  SET CGPA = 8.7
  3  WHERE STUDENT_ID = 'S101';

1 row updated.

SQL>
SQL> COMMIT;

Commit complete.

SQL> select * from student1;

STUDENT_ID           STUDENT_NAME              DOB       G MOBILE_NUMBER
-------------------- ------------------------- --------- - -------------
EMAIL_ID                  DEPT_ID                        ADMISSION       CGPA
------------------------- ------------------------------ --------- ----------
S101                 Akhil Raj                 15-AUG-05 m    9876501234
akhil@gmail.com           D01                            26-JUL-26        8.7

S102                 Arun Kumar                20-JAN-05 m    9876545678
arun@gmail.com            D01                            26-JUL-26

S103                 Anjali Nair               12-MAR-05 f    9876512345
anjali@gmail.com          D01                            26-JUL-26        9.4


q17 
SQL> UPDATE STUDENT1
  2  SET MOBILE_NUMBER = 9876543210,
  3      EMAIL_ID = 's101@gmail.com'
  4  WHERE STUDENT_ID = 'S101';

1 row updated.

SQL>
SQL> COMMIT;

Commit complete.

SQL> select * from student1;

STUDENT_ID           STUDENT_NAME              DOB       G MOBILE_NUMBER
-------------------- ------------------------- --------- - -------------
EMAIL_ID                  DEPT_ID                        ADMISSION       CGPA
------------------------- ------------------------------ --------- ----------
S101                 Akhil Raj                 15-AUG-05 m    9876543210
s101@gmail.com            D01                            26-JUL-26        8.7

S102                 Arun Kumar                20-JAN-05 m    9876545678
arun@gmail.com            D01                            26-JUL-26

S103                 Anjali Nair               12-MAR-05 f    9876512345
anjali@gmail.com          D01                            26-JUL-26        9.4

q18
SQL> UPDATE FACULTY1
  2  SET SALARY = SALARY + 5000
  3  WHERE FACULTY_ID = 'F101';

1 row updated.

SQL>
SQL> COMMIT;

Commit complete.

SQL> select * from student1;

STUDENT_ID           STUDENT_NAME              DOB       G MOBILE_NUMBER
-------------------- ------------------------- --------- - -------------
EMAIL_ID                  DEPT_ID                        ADMISSION       CGPA
------------------------- ------------------------------ --------- ----------
S101                 Akhil Raj                 15-AUG-05 m    9876543210
s101@gmail.com            D01                            26-JUL-26        8.7

S102                 Arun Kumar                20-JAN-05 m    9876545678
arun@gmail.com            D01                            26-JUL-26

S103                 Anjali Nair               12-MAR-05 f    9876512345
anjali@gmail.com          D01                            26-JUL-26        9.4


q19 


SQL> UPDATE FACULTY1
  2  SET SALARY = SALARY * 1.10;

3 rows updated.

SQL>
SQL> COMMIT;

Commit complete.

SQL> select * from facutly1;
select * from facutly1
              *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> select * from faculty1;

FACULTY_ID                FACULTY_NAME              QUALIFICATION
------------------------- ------------------------- -----------------------
DESIGNATION             JOINING_D     SALARY EMAIL_ID
----------------------- --------- ---------- --------------------
DEPT_ID
-------------------------
F101                      Meera Joseph              PhD
Assistant Professor     01-JUN-22      66000 meera@rajagiri.edu
D01

F102                      Rahul Menon               M.Tech
Assistant Professor     15-JUL-21      55000 rahul@rajagiri.edu
D01

FACULTY_ID                FACULTY_NAME              QUALIFICATION
------------------------- ------------------------- -----------------------
DESIGNATION             JOINING_D     SALARY EMAIL_ID
----------------------- --------- ---------- --------------------
DEPT_ID
-------------------------

F103                      Anitha Nair               PhD
Professor               10-JUN-20      77000 anitha@rajagiri.edu
D02


q20
SQL> UPDATE FACULTY1
  2  SET SALARY = SALARY * 1.08
  3  WHERE DESIGNATION = 'Assistant Professor';

2 rows updated.

SQL>
SQL> COMMIT;

Commit complete.

q21
SQL> UPDATE DEPARTMENT1
  2  SET OFFICE_LOCATION = 'Technology Block'
  3  WHERE DEPT_NAME = 'Computer Science';

1 row updated.

SQL>
SQL> COMMIT;

Commit complete.

SQL> select * from department1;

DEPT_ID    DEPT_NAME                      OFFICE_LOCATION
---------- ------------------------------ -------------------------
CONTACT_NUMBER HODID
-------------- -------------------------
D01        Computer Science               Technology Block
    9876543210 F101

D02        Electronics                    Science Block


D03        Mathematics                    North Block
    9876501111


DEPT_ID    DEPT_NAME                      OFFICE_LOCATION
---------- ------------------------------ -------------------------
CONTACT_NUMBER HODID
-------------- -------------------------
D04        Physics                        East Block
    9876502222

D05        Commerce                       South Block
    9876503333



q22

SQL> UPDATE COURSE1
  2  SET CREDITS = 5
  3  WHERE COURSE_NAME = 'DBMS';

1 row updated.

SQL>
SQL> COMMIT;

Commit complete.

SQL> select * from course1;

COURSE_ID            COURSE_NAME             CREDITS   SEMESTER DEPT_ID
-------------------- -------------------- ---------- ---------- ----------
FACULTY_ID
-------------------------
C101                 DBMS                          5          3 D01
F101

C102                 Operating Systems             4          3 D01

q23 
SQL> UPDATE COURSE1
  2  SET FACULTY_ID = 'F102'
  3  WHERE FACULTY_ID = 'F101';

1 row updated.

SQL>
SQL> COMMIT;

Commit complete.

SQL> select * from course1;

COURSE_ID            COURSE_NAME             CREDITS   SEMESTER DEPT_ID
-------------------- -------------------- ---------- ---------- ----------
FACULTY_ID
-------------------------
C101                 DBMS                          5          3 D01
F102

C102                 Operating Systems             4          3 D01
F102


