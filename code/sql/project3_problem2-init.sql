
create table student 
(
  snum int not null primary key,
  sname varchar(40) ,
  major varchar(40) ,
  slevel varchar(40) ,
  age int
);

create table faculty
(
  fid int not null primary key,
  fname varchar(40),
  deptid int,
  salary real
);

create table class
(
  cname varchar(40) not null primary key,
  meets_at varchar(40),
  room varchar(40),
  fid int,
  foreign key (fid) references faculty(fid)
);


create table enrolled
(
  snum int,
  cname varchar(40),
  foreign key (snum) references student(snum),
  foreign key (cname) references class(cname),
  constraint eid primary key (snum, cname)
);

insert into student
  VALUES (1 , 'Adams', 'History', 'FR', 18);
insert into student 
  VALUES (2 , 'Bethany', 'History', 'FR', 20);
insert into student 
  VALUES (3 , 'Adams', 'CS', 'SF', 20);
insert into student 
  VALUES (4 , 'Codd', 'CS' , 'SF', 22);
insert into student 
  VALUES (5 , 'Daniels', 'ECE', 'JR', 22);
insert into student 
  VALUES (6 , 'Daniels', 'CS', 'JR', 24);
insert into student 
  VALUES (7 , 'Gordon', 'ECE', 'SR', 24);
insert into student 
  VALUES (8 , 'Smith', 'Physics', 'SR', 26);

insert into faculty
  VALUES (101 , 'Johnson', 10 , 55000);
insert into faculty
  VALUES (102 , 'Lynn', 10 , 65000);
insert into faculty
  VALUES (103 , 'Lynn' , 12 , 30000);
insert into faculty
  VALUES (104 , 'Black' , 11 , 32000);

insert into class
  VALUES ('Intro to Java', 'W 13:30' , 'R128' , 102);
insert into class
  VALUES ('CS 4513', 'F 12:00' , 'K53' , 102);
insert into class
  VALUES ('Intro to Pascal', 'F 09:00' , 'S217' , 102);
insert into class
  VALUES ('Data Structures', 'W 13:30' , 'S217' , 103);
insert into class
  VALUES ('Advanced Java', 'M 15:30' , 'R128' , 103);
insert into class
  VALUES ('Data Networks', 'M 15:30' , 'S217' , 101);
insert into class
  VALUES ('Operating Systems', 'F 09:00' , 'K53' , 103);
insert into class
  VALUES ('Intro to Compilers', 'M 14:30' , 'K53' , 101);
insert into class
  VALUES ('Computer Architecture', 'W 08:00' , 'R128' , 101);
insert into class
  VALUES ('Software Engineering', 'W 10:00' , 'R128' , 104);

insert into enrolled
  VALUES (4 , 'Data Networks');
insert into enrolled
  VALUES (5 , 'Data Networks');
insert into enrolled
  VALUES (6 , 'Intro to Compilers');
insert into enrolled
  VALUES (4 , 'Intro to Compilers');
insert into enrolled
  VALUES (5 , 'Intro to Compilers');
insert into enrolled
  VALUES (1 , 'Intro to Compilers');
insert into enrolled
  VALUES (2 , 'Intro to Compilers');
insert into enrolled
  VALUES (3 , 'Intro to Compilers');
insert into enrolled
  VALUES (4 , 'Advanced Java');