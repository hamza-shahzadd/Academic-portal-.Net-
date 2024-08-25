select * from Student;
select * from CourseInstructors;
select * from Labinstructors;
select * from courses;
select * from Academics;
select * from Section;
select * from student_Section;
select * from CInstructorAlloc;
select *  from LInstructorAlloc;
select * from grade;
select * from Evaluation;
select * from Attendence;
select * from Feedback;
select * from EventLog;
select * from Transcript;
select * from StudentcourseAlloc;
select courseId as Course_Codes, courseName as Courses,creditHours as Credits
from courses;

select courses.courseName,courses.courseId
from courses
where courses.LCoordinator='Cfac01' OR courses.CCoordinator='Cfac01';

select * from student_Section;
select * from StudentcourseAlloc;


-- Queries

select section.sectionName,Student.studentname,student_Section.rollnumber
from section join student_Section on section.SectionId=student_Section.sectionId join Student on Student.rollnumber = student_Section.rollnumber
group by section.sectionName,Student.studentname,student_Section.rollnumber;

select courses.courseId as Course_ID,courses.courseName As course_Name , courses.creditHours 
as Credits,courses.CCoordinator as Coordinator_ID, CourseAllocation.CinstructorId as Instructor_ID
from courses join CourseAllocation on 
CourseAllocation.courseId = courses.courseId join CInstructorAlloc 
on CInstructorAlloc.allocationId = CourseAllocation.allocationId;


select courses.courseName, section.sectionName, Student.rollnumber,Grade.gradeobt
from Grade join courses on grade.courseId = courses.courseId join section on section.sectionId = Grade.sectionId
join Student on Student.rollnumber = Grade.rollnumber
where Grade.sectionId='sec01';

select Attendence.dateA, Attendence.Description from Attendence where Attendence.rollnumber='';


select Grade.gradeobt, count(section.SectionId) as count
from Grade join section on grade.sectionId = section.SectionId
group by Grade.gradeobt, section.SectionId
having section.sectionId ='sec01';

select Feedback.feedbackText
from Feedback
where feedbackId < 'feed033';

select distinct(Evaluation.item),courses.courseId,Evaluation.totalmarks,Evaluation.marksObt
from Evaluation join courses on courses.courseId = Evaluation.courseId
where Evaluation.rollnumber = '20I-0650';

select Transcript.courseId,Transcript.courseName,Transcript.credits,Transcript.semester,Transcript.Cgpa,Transcript.Sgpa
from Transcript
where Transcript.rollnumber ='22I-0528';

select StudentcourseAlloc.courseId, courses.courseName
from StudentcourseAlloc join courses on StudentcourseAlloc.courseId=courses.courseId
where StudentcourseAlloc.rollnumber='22I-0528';

select Feedback.feedback_score,Feedback.feedbackText from Feedback where Feedback.LinstructorId = '' or Feedback.CinstructorId='';


--/////////////////////////////////////////////////////// Log
CREATE TABLE EventLog (
    EventId INT IDENTITY(1,1) PRIMARY KEY,
    EventTime DATETIME,
    EventDescription NVARCHAR(MAX)
);

Create table userlog(
	EventID int identity(1,1) primary key,
	studentid varchar(50),
	status varchar(50),
	eventdate date

);

Create trigger StudentsLogs on Student 
 after INSERT, Delete
 AS 
 BEGIN 
 DECLARE @studentid  varchar(50)
 select @studentid = INSERTED.rollnumber
 from INSERTED

 INSERT INTO Userlog values (@studentid, 'inserted',GETDATE())

 END

 select * from Userlog;

 --DROP TRIGGER tlogs;
