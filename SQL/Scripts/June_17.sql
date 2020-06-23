CREATE TABLE public.student_data_0617
(
    id serial PRIMARY KEY,
    section character varying,
    last_name character varying,
    first_name character varying,
    full_name character varying,
    work_email character varying,
    work_phone character varying,
    book_preference character varying
);

-- copy student_data_0617(section,last_name,first_name,full_name,work_email,work_phone,book_preference)
-- from 'C:\NITEEN\Training\data\track1_students.csv'
-- delimiter ',' CSV header


-- DROP TABLE IF EXISTS student_marks;
-- CREATE TABLE student_marks
-- (
--     id serial PRIMARY KEY,
--     section character varying,
--     last_name character varying,
--     first_name character varying,
--     full_name character varying,
--     marks integer,
--     student_id integer
-- );


-- copy student_marks(section,last_name,first_name,full_name,marks,student_id)
-- from 'C:\NITEEN\Training\data\track1_students_marks.csv'
-- delimiter ',' CSV header

select * from public.student_data_0617

select * from public.student_marks 

select min(marks) from public.student_marks 
select max(marks) from public.student_marks 

select round(avg(marks),2) from public.student_marks 


select full_name from student_data_0617 where 
id in (select student_id from student_marks where marks>
	   (select round(avg(marks),2) from public.student_marks ))
	   
--get the avg marks of students
(select round(avg(marks),2) from public.student_marks)
--list of student ids whose marks are greater than avg marks
select student_id from student_marks 
where marks> (select round(avg(marks),2) from public.student_marks)
	
--list of student names whose marks are greater than avg marks
select id, full_name from public.student_data_0617
where id in (
	(select student_id from student_marks 
where marks> (select round(avg(marks),2) from public.student_marks )
)	
)	
	   
	   








