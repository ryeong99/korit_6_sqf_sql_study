select * from study.student_tb;

update
	student_tb
set
    introduce = "bbb가 포함된 계정입니다."
where
	email like "%bbb%@%";
    
delete
from
	student_tb
where
	student_id between 5 and 7;