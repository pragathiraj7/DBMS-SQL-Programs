drop table course
drop table faculty
drop table student
drop table department



department

create table department(dept_id number(5), 
dept_name varchar2(25) not null,
hod_name varchar2(25),
office_location varchar2(50),
contact_number varchar2(15),
constraint pk_department 
primary key (dept_id),
constraint uq_department_name
UNIQUE (dept_name));
insert into department values(101,'electronics','siyannaa','aluva',9856746888)
insert into department values(102,'mechanical','yannaa','kochi',9356746888)
insert into department values(103,'marine','norman','edaplly',6524545452)
insert into department values(104,'biotech','stone','kaloor',6524545457)
insert into department values(105,'civil','godwin','kaloor',6524545257)


student
create table student(student_id number(25) constraint pk_student primary key,
student_name varchar2(25) not null,
dob date,gender char(5) constraint gender_student check(gender in ('M','F')),
mobile_number varchar2(5),
email_id varchar2(80) constraint uq_email_student unique,
admission_date date,
cgpa numeric(4,2) constraint cgpa_student check(cgpa between 0 and 10)
);
 insert into student values(852,'vishnu','10/mar/2002','M',65498,'vis852edu@gmail.com','11/jun/2026',9.8);
 insert into student values(852,'vishnu','10/mar/2002','M',65498,'vis852edu@gmail.com','11/jun/2026',9.8);
insert into student values(963,'sadiya','05/may/2005','F',45434,'sad963edu@gmail.com','13/jun/2026',7.6);
insert into student values(254,'tanvi','05/mar/2003','F',65525,'tan254edu@gmail.com','02/jul/2026',9.6);
 insert into student values(369,'aiswarya','05/mar/2003','F',6525,'ais369edu@gmail.com','02/jun/2026',6.4);
insert into student values(363,'anu','05/mar/2003','F',65335,'anu369edu@gmail.com','02/jun/2026',6.4);


faculty

create table faculty(faculty_id number(6) constraint pk_faculty primary key,
faculty_name varchar2(60) not null,
qualification varchar2(60)not null,
designation varchar2(50)not null,
salary number(10,2),
joining_date date default sysdate,
email_id varchar2(80) constraint uq_email_faculty unique
);

 insert into faculty values(741,'bindu','Ph.d','Professor',321654,'01/jun/2021','bin741edu@gmail.com');
insert into faculty  values(951,'rinu','M.tech','Assistant professor',987456,'01/jan/2018','rin951edu@gmail.com');
 insert into faculty  values(753,'keerthana','M.Sc','Lecturer',369258,'05/mar/2019','kee753edu@gmail.com');
insert into faculty  values(264,'rahul','Ph,d','Assistant professor',100000,'05/mar/2019','rah264edu@gmail.com');
insert into faculty  values(703,'kareena','Mca','Lecturer',368858,'05/mar/2019','oop753edu@gmail.com');



course
create table course(course_id number(6) constraint pk_course primary key,
course_name varchar(50) not null,
credits number(2) constraint chk_course_credits check(credits between 1 and 12),
semester number(2) constraint chk_semester_course check(semester between 1 and 10 ),
dept_name varchar2(50),
faculty_name varchar2(50));
insert into course values(300,'diploma in Elecronics',4,3,'electronics','bindu')
insert into course values(301,'B.tech marine engineering',6,4,'marine','rinu')
insert into course values(302,'M.Sc biotechnology',8,5,'biotech','keerthana')
insert into course  values(304,'B.E civil engineering',7,5,'civil','rahul')
insert into course  values(305,'B tech mechanical',6,6,'mechanical','teresa')