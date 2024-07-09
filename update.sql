# 데이터 수정(DML - UPDATE)

select * from student_tb;

select
	student_id
from
	student_tb
where
	student_name = "김준오";

update
	student_tb
set 
	email = "dxa@gmail.com"
where
	student_id = (select
					student_id
					from
					( select * from student_tb) as temp_student_tb
					where
				 	temp_student_tb.student_name = "김준이");
                    
update
	student_tb
set
	phone = "010-1234-4321",
    email = "google@gmail.com"
where
	student_id = 3;