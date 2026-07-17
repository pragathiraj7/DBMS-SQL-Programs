drop table student;

drop table dept;

create table dept(dept_id varchar(20) primary key,
dept_name varchar(20) not null,
hod_name varchar(20),
office_location varchar(20),
contact_number int),
constraint pk_department primary key(dept_id),
constraint uq_department_name unique(dept_name));

CREATE TABLE student (
    student_id VARCHAR(20),
    student_name VARCHAR(20),
    dob DATE,
    gender VARCHAR(5),
    mobile_number INT,
    email_id VARCHAR(20),
    cgpa NUMERIC(5,2),
    admission_date DATE DEFAULT SYSDATE,
    dept_id VARCHAR(20), -- Changed to VARCHAR(20) to match your dept table
    CONSTRAINT pk_student PRIMARY KEY (student_id),
    CONSTRAINT uq_student_email UNIQUE (email_id),
    CONSTRAINT chk_student_gender CHECK (gender IN ('m', 'f', 'tg'))
);
create table faculty(
faculty_id varchar(20) constraint pkfac primary key ,
    qualification varchar(20),
    designation varchar(20),
    joining_date date ,
    salary int ,
    email_id varchar(20),
    dept_id   varchar(20)
);

 CREATE TABLE course (
       course_id VARCHAR(20) CONSTRAINT cous_key PRIMARY KEY,
       course_name VARCHAR(20) CONSTRAINT cour_nam NOT NULL,
        credits NUMBER(2),
        semester NUMBER(2),
       dept_id NUMBER(5),
        faculty_id VARCHAR(20),
       CONSTRAINT chk_course_credits CHECK (credits BETWEEN 1 AND 6),
        CONSTRAINT chk_course_semester CHECK (semester BETWEEN 1 AND 8)
   );
 insert into  dept  values(101,'cs','bidiya','assumption block',999993333);
 insert into  dept  values(102,'sw','diljith','chavara',1234567890);
insert into  dept  values(103,'commerce','deepa','carmel',123488890);
 insert into  dept  values(104,'science','darwyn','carmel',1234770);
 insert into  dept  values(105,'maths','john','assumption block',12388870); 
select * from dept;

