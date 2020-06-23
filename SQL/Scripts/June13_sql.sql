-- -- -- Table: public.student_data

-- -- -- DROP TABLE public.student_data;

-- -- CREATE TABLE public.student_data
-- -- (
-- --     id bigint NOT NULL,
-- --     section character varying COLLATE pg_catalog."default",
-- --     last_name character varying COLLATE pg_catalog."default",
-- --     first_name character varying COLLATE pg_catalog."default",
-- --     full_name character varying COLLATE pg_catalog."default",
-- --     work_email character varying COLLATE pg_catalog."default",
-- --     work_phone character varying COLLATE pg_catalog."default",
-- --     book_preference character varying COLLATE pg_catalog."default",
-- --     CONSTRAINT student_data_pkey PRIMARY KEY (id)
-- -- )

-- -- TABLESPACE pg_default;

-- -- ALTER TABLE public.student_data
-- --     OWNER to postgres;
	
-- select * from public.student order by 1 desc

-- truncate table public.student 

-- delete from public.student
-- where id=2

-- copy student_data(section,last_name,first_name,full_name,work_email,work_phone,book_preference)
-- from 'C:\NITEEN\Training\data\track1_students.csv'
--  delimiter ',' CSV header

	
-- SELECT 
-- INSERT
-- UPDATE
-- DELETE




-- update student_data
-- set last_name='Song' , first_name='Nancy'
-- where id=160

select * from public.student_data
select last_name, first_name, last_name || '  ' || first_name as full_student_name from public.student_data

select last_name, first_name, last_name, work_email from public.student_data

-- CUESTAED@METROPLUS.ORG
-- goicochc2@nychhc.org


select substring('NITEEN' from 3 for 6) as sunstring_value

select substring('NITEEN@datascience' from 7 for length('NITEEN@datascience')) as sunstring_value

select length('test') as testvalue


select position('@' in 'CUESTAED@METROPLUS.ORG') as position_of_at_sign
substring 


select last_name, first_name, last_name, work_email, position('@' in work_email) domain_name  from public.student_data

select last_name, first_name, last_name, work_email, 
substring(work_email from position('@' in work_email) for length(work_email)) as domain_name  														  
from public.student_data


select substring(work_email from position('@' in work_email) for length(work_email)) as domain_name, count(*) as total_domain_count 														  
from public.student_data
group by domain_name

select substring(lower(work_email) from position('@' in lower(work_email)) for length(lower(work_email))) as domain_name, count(*) as total_domain_count 														  
from public.student_data
group by domain_name







	
	
	