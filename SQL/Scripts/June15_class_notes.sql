DROP TABLE IF EXISTS student_da_0615;
CREATE TABLE student_da_0615
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

INSERT INTO public.student_da_0615(
	 section, last_name, first_name, full_name, work_email, work_phone, book_preference)
	VALUES ('Niteen','BETANCOURT','MARIE','Aukia Betancourt','Aukia.Betancourt@nychhc.org','(212) 562-3165','Physical Copy');
	
INSERT INTO public.student_da_0615(
	 section, last_name, first_name, full_name, work_email, work_phone, book_preference)
	VALUES ('Niteen','Goicochea-Creamer','Carla','Carla Goicochea-Creamer','goicochc2@nychhc.org','(646) 4582058','Physical Copy');
	
INSERT INTO public.student_da_0615(
	 section, last_name, first_name, full_name, work_email, work_phone, book_preference)
	VALUES 
	('Niteen','',null,'Cloie Velasco','velascoc@nychhc.org','(718) 8833610','Digital Copy'),
('Niteen','cuesta','edward','Edward Cuesta','CUESTAED@METROPLUS.ORG','(212) 9083698','Digital Copy'),
('Niteen','Lopez','Emanuel','Emanuel Lopez','LOPEZEMA@nychhc.org','(718) 334.3809','Both'),
('Niteen','Cruz','Emma','Emma Cruz','EMMA.CRUZ@nychhc.org','(646) 6946522','Both'),
('Niteen','Vayner','Felix','Felix Vayner','VAYNERF@nychhc.org','(646) 614-0123','Prefer both but if the option is only Digital I am ok with that'),
('Niteen','BABAR','FURHAN','Furhan Babar','Furhan.Babar@nychhc.org','(212) 9392016','Both'),
('Niteen','Scharf','Grace','Grace Scharf','yehg@nychhc.org','(646) 6947116','Either is fine. If physical is possible I can pick up from Central Office '),
('Niteen','Gumaneh','Hawa','Hawa Gumaneh','gumanehh@nychhc.org','(646) 832-7165','Both'),
('Niteen','Williams','Janet','Janet Williams','WILLIAMJ35@nychhc.org','(718) 245-3232','Both'),
('Niteen','Lu','Jenni','Jenni Lu','luj8@nychhc.org','(212) 238-8039','Both'),
('Niteen','HESLOP','KRISTIANA','Kristiana Heslop','GARCIAKR@nychhc.org','#N/A','Both'),
('Niteen','Winslow','LeTrelle','Letrelle Winslow','Letrelle.Winslow@nychhc.org','(212) 562-5916','Both'),
('Niteen','CHIU','LINDA','Linda Chiu','Linda.Chiu@nychhc.org','(646) 4586459','Both'),
('Niteen','DeJesus','Liskari','Liskari DeJesus','dejesul@nychhc.org','(718) 918-3134','Both'),
('Niteen','Kaur','Manjinder','Manjinder Kaur','KaurM4@nychhc.org','(646) 6946711',''),
('Niteen','Melendez','Milagros','Milagros Melendez','Milagros.Melendez@nychhc.org','(718) 9183245','Both'),
('Niteen','Xu','Min Hua','Min Hua Xu','MinHua.Xu@nychhc.org','(718) 486-2780','Both'),
('Niteen','Roland','Natassia','Natassia Roland','rolandn@nychhc.org','(212) 939-2582','I am willing to pick up the physical copy from 55 Water Street.'),
('Niteen','Willis','Newton','Newton Willis','Newton.Willis@nychhc.org','(718) 245-2635','Physical Copy'),
('Niteen','Oladokun','Omobolanle','Omobolanle Oladokun','OLADOKUO@nychhc.org','(347) 7747615','Physical Copy'),
('Niteen','Walters','Philip','Philip Walters','Philip.Walters@nychhc.org','(212) 939-1464','Digital Copy'),
('Niteen','Denerville','Regine','Regine Denerville','Regine.Denerville@nychhc.org','(646) 8154525','Both'),
('Niteen','Angus-Gonzalez','Romona','Romona Angus-Gonzalez','romona.angus-gonzalez@nychhc.org','(212) 562-7973','Digital Copy'),
('Niteen','Velez','Shannon','Shannon Velez','Shannon.velez@nychhc.org','(718) 579-6365','Digital Copy'),
('Niteen','','','Sharda Thakuri','thakuris@nychhc.org','(718) 3343054',''),
('Niteen','Chen','Shuna','Shuna Chen','CHENSHU@metroplus.org','(212) 9088467','Both'),
('Niteen','Brishbon','Vonda','Vonda Brishbon','Vonda.Brishbon@nychhc.org','(646) 458-7806','Digital Copy'),
('Niteen','GOMEZ','YANILDA','Yanilda Gomez','Yanilda.Gomez@nychhc.org','(212) 562-2333','Both'),
('Niteen','','','Yu Song','Yu.Song@nychhc.org','(646) 4589616','Digital Copy')
;


copy student_da_0615 to 'C:\NITEEN\Training\data\student_da_0615.csv' delimiter ',' CSV header

copy student_da_0615(section, last_name, first_name, full_name, work_email, work_phone, book_preference)
from 'C:\NITEEN\Training\data\student_da_0615.csv' delimiter ',' CSV header

--Cloie Velasco
Update public.student_da_0615
set last_name='Velasco', first_name='Cloie'
where id=4


--delete
delete from public.student_da_0615
where id in (11,14)

--add new column to table
alter table student_da_0615
add column enroll boolean default true

select * from student_da_0615 where enroll = false

update student_da_0615
set enroll = false
where id in (43,46)


--delete
delete from public.student_da_0615
where enroll = false







