-- Group by

select
	distinct 
    category_id,
    publisher_id
from
	book_tb;
    
-- 카테고리별 도서 카운트
-- 실행순서 from - where - group - select
select
	category_id,
    count(*)
from
	book_tb
where
	book_id > 7000
group by
	category_id;
    
-- 도서명 중 '돈'이라는 글자가 들어간 데이터들을 찾아 카테고리별로 묶으시오
select
	category_id,
    count(*)
from
	book_tb
where
	book_name like "%돈%"
group by
	category_id;
    
-- 카테고리별로 도서 개수가 10 넘는 값만  출력
select
	*
from
	(select
		category_id,
		count(*) as category_count
	from
		book_tb
	where
		book_name like "%돈%"
	group by
	category_id) as category_group_book_tb
where
	category_count > 10;
    
select
	category_id,
    count(*) as category_count
from
	book_tb
where
	book_name like "%돈%"
group by
	category_id
having
	category_count > 10;
