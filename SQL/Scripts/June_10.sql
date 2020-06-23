select * from nurse 

-- where registered is false

select * from on_call

select * from patient 

select * from physician
select * from department
select * from affiliated_with

-- list all physicians who do not have any primary affiliation 
select physician.name, physician.position, affiliated_with.primaryaffiliation  from physician
inner join affiliated_with on physician.employeeid = affiliated_with.physician
where affiliated_with.primaryaffiliation is false
--where affiliated_with.primaryaffiliation is true

-- list all the physicians who are also head of deparment
select physician.name, physician.position, department.name  from physician
join department on physician.employeeid  = department.head


select * from prescribes
select * from physician
select * from department
select * from affiliated_with

-- list doctors name from general medicine
select physician.name,physician.position,department.name, department.departmentid  from physician
join affiliated_with on affiliated_with.physician = physician.employeeid 
join department on department.departmentid = affiliated_with.department
--where department.departmentid = 1
where department.name = 'General Medicine'