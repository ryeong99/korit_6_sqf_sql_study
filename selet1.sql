#데이터 조회(DML - SELECT)alter

select * from student_tb;
select `student_id`, `student_name`, `phone`, `introduce`, `email`, `admission_date` from `study`.`student_tb`;
select student_id, student_name, phone, introduce, email, admission_date from `study`.`student_tb`;
select student_id, student_name, phone, introduce, email, admission_date from `student_tb`;
select student_id, student_name, phone, introduce, email, admission_date from student_tb;
select student_name, student_id from student_tb;
select student_id, student_name from student_tb;
select student_id, student_name as s_name from student_tb;
select 4;
select 4 as number;
select 4 as number, "김준일" as name, 31 as age;
# union(all) 병합조건 - 컬럼의 개수와 자료형이 동일한 select 결과만 병합 가능
# union - 중복제거 후 병합
# union all - 중복제거 없이 병합
select 4 as number, "김준일" as name, 31 as age
union 
select 5 as number, "김준이" as name, 32 as age
union 
select 5 as number, "김준이" as name, 32 as age;

select student_id, student_name from student_tb
union all
select student_id, phone from student_tb;

select
	number,
    name
from
(select 4 as number, "김준일" as name, 31 as age
union all
select 5 as number, "김준이" as name, 32 as age
union all
select 5 as number, "김준이" as name, 32 as age) as temp_tb;