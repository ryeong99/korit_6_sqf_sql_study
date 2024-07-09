--  order by - 정렬
-- asc 오름차순 besc 역순
select
	*
from
	category_tb
order by
	category_id asc;
    
select
	*
from
	book_tb
order by
	publisher_id desc,
    category_id asc,
	book_id desc;