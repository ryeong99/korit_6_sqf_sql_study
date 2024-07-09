# group by - 그룹

select
	admission_date,
	count(*)
from
	student_tb
group by 
	admission_date;