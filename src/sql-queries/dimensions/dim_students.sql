create table if not exists rivadataplatform.dataproduct.dim_students
as


select 
row_number () over ( order by cast (student_id as int))
as student_key,
student_id,
name as student_name,
email,
city,
country,
phone_no,
linkedin_link,
github_link,
created_at

from rivadataplatform.landing.students