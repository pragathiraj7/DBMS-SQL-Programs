create  table department1(
dept_id varchar(10) constraint  depidcons primary key,
dept_name  varchar(30) constraint  depnamecons NOT null constraint  deptname unique,
hod_name varchar(25),
office_location varchar(25),
contact_number NUMBER));

create  table student1(
student_id  varchar(20) constraint stuidcon primary key,
student_name  varchar(25),
dob date,
gender char(1) constraint gencon check(gender IN ('f','m')),
mobile_number NUMBER,
email_id  varchar(25)constraint emaidcon  unique ,
dept_id varchar(30) constraint fkdeptid references department1(dept_id),
admission_date date,
cgpa NUMBER constraint cgpcon check(cgpa between 0 and 10));

create table faculty1(
faculty_id  varchar(25) constraint facidcon  primary key,
faculty_name varchar(25),
qualification varchar(23),
designation varchar(23),
joining_date date,
salary  int  constraint  salcon check (salary>0),
email_id varchar(20) constraint emacon  unique ,
dept_id varchar(25) constraint fkdeptid references department1(dept_id));


CREATE TABLE course1 (
course_id VARCHAR2(20) CONSTRAINT couidcon PRIMARY KEY,
course_name VARCHAR2(20) CONSTRAINT counamcon NOT NULL,
credits NUMBER CONSTRAINT credcon CHECK (credits BETWEEN 1 AND 6),
semester NUMBER CONSTRAINT semcon CHECK (semester BETWEEN 1 AND 8),
dept_id VARCHAR2(10)CONSTRAINT fdepid REFERENCES department1(dept_id),
faculty_id VARCHAR2(25) CONSTRAINT faccon REFERENCES faculty1(faculty_id)
);

CREATE TABLE enrollment1 (
enrollment_id VARCHAR2(20) CONSTRAINT enrollidcon PRIMARY KEY,
student_id VARCHAR2(20) CONSTRAINT fkenrollstu REFERENCES student1(student_id),
course_id VARCHAR2(20) CONSTRAINT fkenrollcou REFERENCES course1(course_id),
enrollment_date DATE DEFAULT SYSDATE,
academic_year VARCHAR2(10),CONSTRAINT stu_course_uk UNIQUE (student_id, course_id)
);
CREATE TABLE result1 (
result_id VARCHAR2(20)CONSTRAINT residcon PRIMARY KEY,
enrollment_id VARCHAR2(20) CONSTRAINT fkenrollcon REFERENCES enrollment1(enrollment_id),
internal_marks NUMBER CONSTRAINT intmarkcon CHECK (internal_marks BETWEEN 0 AND 50),
 external_marks NUMBER CONSTRAINT extmarkcon CHECK (external_marks BETWEEN 0 AND 50),
total_marks NUMBER, grade CHAR(1) CONSTRAINT gradecon CHECK (grade IN ('A','B','C','D','F')),
result_status VARCHAR2(10) CONSTRAINT statuscon CHECK (result_status IN ('PASS','FAIL'))
);

CREATE TABLE event1 (
event_id VARCHAR2(20) CONSTRAINT evidcon PRIMARY KEY,
event_name VARCHAR2(30), event_date DATE,
venue VARCHAR2(30),
faculty_id VARCHAR2(25) CONSTRAINT fkfaccon REFERENCES faculty1(faculty_id),
max_participants NUMBER CONSTRAINT maxparcon CHECK (max_participants > 0),
registration_fee NUMBER CONSTRAINT regfeecon CHECK (registration_fee >= 0)
);

CREATE TABLE event_registration1 (
registration_id VARCHAR2(20) CONSTRAINT regidcon PRIMARY KEY,
event_id VARCHAR2(20) CONSTRAINT fkeventcon REFERENCES event1(event_id),
student_id VARCHAR2(20) CONSTRAINT fkstudentcon  REFERENCES student1(student_id),
registration_date DATE DEFAULT SYSDATE,
participation_status VARCHAR2(15) CONSTRAINT partstatcon CHECK (participation_status IN ('REGISTERED','ATTENDED','ABSENT'))
);

SQL> ALTER TABLE department1
  2  ADD CONSTRAINT fkhodfac
  3  FOREIGN KEY (hod_faculty_id)
  4  REFERENCES faculty1(faculty_id);

Table altered.

SQL> desc department1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPT_ID                                   NOT NULL VARCHAR2(10)
 DEPT_NAME                                 NOT NULL VARCHAR2(30)
 HOD_NAME                                           VARCHAR2(25)
 OFFICE_LOCATION                                    VARCHAR2(25)
 CONTACT_NUMBER                                     NUMBER
 HOD_FACULTY_ID                                     VARCHAR2(25)

SQL> ALTER TABLE department1
  2  DROP COLUMN hod_name;

Table altered.

SQL> desc department1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPT_ID                                   NOT NULL VARCHAR2(10)
 DEPT_NAME                                 NOT NULL VARCHAR2(30)
 OFFICE_LOCATION                                    VARCHAR2(25)
 CONTACT_NUMBER                                     NUMBER
 HOD_FACULTY_ID                                     VARCHAR2(25)

SQL> desc student1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUDENT_ID                                NOT NULL VARCHAR2(20)
 STUDENT_NAME                                       VARCHAR2(25)
 DOB                                                DATE
 GENDER                                             CHAR(1)
 MOBILE_NUMBER                                      NUMBER
 EMAIL_ID                                           VARCHAR2(25)
 DEPT_ID                                            VARCHAR2(30)
 ADMISSION_DATE                                     DATE
 CGPA                                               NUMBER

SQL> desc faculty1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 FACULTY_ID                                NOT NULL VARCHAR2(25)
 FACULTY_NAME                                       VARCHAR2(25)
 QUALIFICATION                                      VARCHAR2(23)
 DESIGNATION                                        VARCHAR2(23)
 JOINING_DATE                                       DATE
 SALARY                                             NUMBER(38)
 EMAIL_ID                                           VARCHAR2(20)
 DEPT_ID                                            VARCHAR2(25)

SQL> desc course1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COURSE_ID                                 NOT NULL VARCHAR2(20)
 COURSE_NAME                               NOT NULL VARCHAR2(20)
 CREDITS                                            NUMBER
 SEMESTER                                           NUMBER
 DEPT_ID                                            VARCHAR2(10)
 FACULTY_ID                                         VARCHAR2(25)

SQL> desc enrollment1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ENROLLMENT_ID                             NOT NULL VARCHAR2(20)
 STUDENT_ID                                         VARCHAR2(20)
 COURSE_ID                                          VARCHAR2(20)
 ENROLLMENT_DATE                                    DATE
 ACADEMIC_YEAR                                      VARCHAR2(10)

SQL> desc result1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 RESULT_ID                                 NOT NULL VARCHAR2(20)
 ENROLLMENT_ID                                      VARCHAR2(20)
 INTERNAL_MARKS                                     NUMBER
 EXTERNAL_MARKS                                     NUMBER
 TOTAL_MARKS                                        NUMBER
 GRADE                                              CHAR(1)
 RESULT_STATUS                                      VARCHAR2(10)

SQL> desc event1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EVENT_ID                                  NOT NULL VARCHAR2(20)
 EVENT_NAME                                         VARCHAR2(30)
 EVENT_DATE                                         DATE
 VENUE                                              VARCHAR2(30)
 FACULTY_ID                                         VARCHAR2(25)
 MAX_PARTICIPANTS                                   NUMBER
 REGISTRATION_FEE                                   NUMBER

SQL>  desc event_registration1
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 REGISTRATION_ID                           NOT NULL VARCHAR2(20)
 EVENT_ID                                           VARCHAR2(20)
 STUDENT_ID                                         VARCHAR2(20)
 REGISTRATION_DATE                                  DATE
 PARTICIPATION_STATUS                               VARCHAR2(15)