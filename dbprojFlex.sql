CREATE TABLE Student (
    rollnumber varchar(255) not null,
    studentname varchar(255),
    department varchar(255),
    Spassword varchar(255) not null,
	Semail varchar(255),
	primary key(rollnumber)
    
);

CREATE TABLE Course (
    courseId varchar(255) NOT NULL,
    courseName varchar(255) Not null,
    creditHours integer,
    prereqId varchar(255),
	StudentCourseid varchar(255)
    primary key(courseId),

);

CREATE TABLE StudentCourse (
    StudentCourseid varchar(255) not null,
    rollnumber varchar(255),
	courseId varchar(255),
	primary key(StudentCourseid),
	foreign key(courseId) references Course(courseId),
	foreign key(rollnumber) references Student(rollnumber)   
);



CREATE TABLE AcademicOffice (
    Id varchar(255) NOT NULL,
    username varchar(255) Not null,
	Apassword varchar(255) not null,
	Academicsname varchar(255) not null,
    Aemail varchar(255),
	primary key(Id),
	
	);

CREATE TABLE Courseinstructor (
    CinstructorId varchar(255) NOT NULL,
    CIName varchar(255) Not null,
	Iemail varchar(255),
    primary key(CinstructorId),
);


CREATE TABLE Labinstructor (
    LinstructorId varchar(255) NOT NULL,
    LIName varchar(255) Not null,
	Lemail varchar(255),
    primary key(LinstructorId),
	);

ALTER TABLE Courseinstructor
ADD password varchar(255);

ALTER TABLE Labinstructor
ADD password varchar(255);

CREATE TABLE Section (
    sectionId varchar(255) NOT NULL,
    sectionName varchar(5) Not null,
	courseId varchar(255),
	rollnumber varchar(255),
    primary key(sectionId),
	CinstructorId varchar(255),
    LinstructorId varchar(255),
    Id varchar(255),
	foreign key(courseId) references Course(courseId),
	foreign key(CinstructorId) references Courseinstructor(CinstructorId),
    foreign key(LinstructorId) references Labinstructor(LinstructorId),
    foreign key(Id) references AcademicOffice(Id),
	foreign key(rollnumber) references Student(rollnumber)
);




CREATE TABLE CourseAllocation (
  allocationId varchar(255) NOT NULL,
  courseId varchar(255),
  CinstructorId varchar(255),
  LinstructorId varchar(255),
  Id varchar(255),
  primary key(allocationId),
  foreign key(courseId) references Course(courseId),
  foreign key(CinstructorId) references Courseinstructor(CinstructorId),
  foreign key(LinstructorId) references Labinstructor(LinstructorId),
  foreign key(Id) references AcademicOffice(Id)
);


CREATE TABLE MarksDistribution (
  distributionId varchar(255) NOT NULL,
  courseId varchar(255),
  CinstructorId varchar(255),
  LinstructorId varchar(255),
  AssignmentW numeric (10),
  QuizW numeric (10),
  SessionalW numeric (10),
  FinalW numeric (10),
  primary key(distributionId),
  foreign key(courseId) references Course(courseId),
  foreign key(CinstructorId) references Courseinstructor(CinstructorId),
  foreign key(LinstructorId) references Labinstructor(LinstructorId),
);

CREATE TABLE Attendence (
  AttendenceId varchar(255) NOT NULL,
  courseId varchar(255),
  sectionId varchar(255),
  rollnumber varchar(255),
  dateA date,
  CinstructorId varchar(255),
  LinstructorId varchar(255),
  primary key(AttendenceId),
  foreign key(courseId) references Course(courseId),
  foreign key(CinstructorId) references Courseinstructor(CinstructorId),
  foreign key(LinstructorId) references Labinstructor(LinstructorId),
  foreign key(sectionId) references Section(sectionId),
  foreign key(rollnumber) references Student(rollnumber)
);

CREATE TABLE Evaluation (
  EvalId varchar(255) NOT NULL,
  courseId varchar(255),
  sectionId varchar(255),
  rollnumber varchar(255),
  marksObt numeric (10),
  totalmarks numeric (10),
  CinstructorId varchar(255),
  LinstructorId varchar(255),
  primary key(EvalId),
  foreign key(courseId) references Course(courseId),
  foreign key(CinstructorId) references Courseinstructor(CinstructorId),
  foreign key(LinstructorId) references Labinstructor(LinstructorId),
  foreign key(sectionId) references Section(sectionId),
  foreign key(rollnumber) references Student(rollnumber)
);


CREATE TABLE Grade (
  gradeId varchar(255) NOT NULL,
  courseId varchar(255),
  sectionId varchar(255),
  rollnumber varchar(255),
  marksObt numeric (10),
  totalmarks numeric (10),
  gradeobt varchar(3),
  CinstructorId varchar(255),
  LinstructorId varchar(255),
  primary key(gradeId),
  foreign key(courseId) references Course(courseId),
  foreign key(CinstructorId) references Courseinstructor(CinstructorId),
  foreign key(LinstructorId) references Labinstructor(LinstructorId),
  foreign key(sectionId) references Section(sectionId),
  foreign key(rollnumber) references Student(rollnumber)
);


CREATE TABLE Feedback (
  feedbackId varchar(255) NOT NULL,
  courseId varchar(255),
  sectionId varchar(255),
  rollnumber varchar(255),
  feedbackText varchar(255),
  CinstructorId varchar(255),
  LinstructorId varchar(255),
  primary key(feedbackId),
  foreign key(courseId) references Course(courseId),
  foreign key(CinstructorId) references Courseinstructor(CinstructorId),
  foreign key(LinstructorId) references Labinstructor(LinstructorId),
  foreign key(sectionId) references Section(sectionId),
  foreign key(rollnumber) references Student(rollnumber)
);


CREATE TABLE Transcript (
  TransId varchar(255) NOT NULL,
  courseId varchar(255),
  courseName varchar(255),
  sectionId varchar(255),
  rollnumber varchar(255),
  credits numeric (3),
  semester numeric (3),
  grade varchar(3),
  gpa numeric (5),
  feedbackText varchar(255),
  CinstructorId varchar(255),
  LinstructorId varchar(255),
  primary key(TransId),
  foreign key(courseId) references Course(courseId),
  foreign key(CinstructorId) references Courseinstructor(CinstructorId),
  foreign key(LinstructorId) references Labinstructor(LinstructorId),
  foreign key(sectionId) references Section(sectionId),
  foreign key(rollnumber) references Student(rollnumber)
);

INSERT INTO Student VALUES ('20i1840', 'Momina Hayat', 'CS', 'fast1234' , 'i201840@nu.edu.pk');
INSERT INTO Student VALUES ('20i0796', 'Hamza Shahzad', 'CS', 'hello123' , 'i200796@nu.edu.pk');


INSERT INTO Course VALUES ('CS001', 'Programming Fundamentals', 3, 'pr001' , '1001');
INSERT INTO Course VALUES ('CS002', 'Object Oriented Programming', 3, 'pr002' , '1002');

INSERT INTO StudentCourse VALUES ('1001', '20i0796', 'CS001');
INSERT INTO StudentCourse VALUES ('1002', '20i1840', 'CS002');

INSERT INTO AcademicOffice VALUES ('Admin1', 'Amir123', 'admin123' , 'Amir Rehman', 'amir.rehman@nu.edu.pk');
INSERT INTO AcademicOffice VALUES ('Admin2', 'fahad123', 'admin345' , 'Fahad Shahzad', 'fahad.shahzad@nu.edu.pk');

INSERT INTO Courseinstructor VALUES ('fac01', 'Amna Basharat', 'amna.basharat@nu.edu.pk' , 'amna123');
INSERT INTO Courseinstructor VALUES ('fac02', 'Labiba Fahad', 'labiba.fahad@nu.edu.pk' , 'labiba123');

INSERT INTO Labinstructor VALUES ('lab01', 'Amina Siddique', 'amina.siddique@nu.edu.pk' , 'amina123');
INSERT INTO Labinstructor VALUES ('lab02', 'Amir Gulzar', 'amir.gulzar@nu.edu.pk' , 'amir123');

INSERT INTO Section VALUES ('sec01', 'A', 'CS001' , '20i1840', 'fac01' , 'lab01' , 'admin1');
INSERT INTO Section VALUES ('sec02', 'B', 'CS002' , '20i0796', 'fac02' , 'lab02' , 'admin1');

INSERT INTO CourseAllocation VALUES ('al001', 'CS001', 'fac01' , 'lab01', 'admin2');
INSERT INTO CourseAllocation VALUES ('al002', 'CS002', 'fac01' , 'lab01', 'admin2');

INSERT INTO  MarksDistribution  VALUES ('d01', 'CS001', 'fac01' , 'lab01', 10 , 10, 30 , 40);
INSERT INTO  MarksDistribution  VALUES ('d02', 'CS002', 'fac01', 'lab01', 10 , 10, 30 , 40);

INSERT INTO  Attendence  VALUES ('att001', 'CS002', 'sec01', '20i1840', '2023-05-10', 'fac01', 'lab01');
INSERT INTO  Attendence  VALUES ('att002', 'CS001', 'sec02', '20i0796', '2023-05-9', 'fac01', 'lab01');

INSERT INTO  Evaluation  VALUES ('eval01', 'CS002', 'sec01', '20i1840', 78, 100, 'fac01', 'lab01');
INSERT INTO  Evaluation  VALUES ('eval02', 'CS001', 'sec01', '20i1840', 60, 100, 'fac02', 'lab02');

INSERT INTO  Grade  VALUES ('grade01', 'CS002', 'sec01', '20i1840', 78, 100, 'B+','fac01', 'lab01');
INSERT INTO  Grade  VALUES ('grade02', 'CS001', 'sec01', '20i1840', 60, 100, 'C+','fac01', 'lab01');

INSERT INTO  Feedback  VALUES ('feedback01', 'CS001', 'sec01', '20i1840', 'The teacher is cooperative','fac01', 'lab01');
INSERT INTO  Feedback  VALUES ('feedback02', 'CS001', 'sec01', '20i0796', 'The teacher is satisfactory','fac01', 'lab01');
 
