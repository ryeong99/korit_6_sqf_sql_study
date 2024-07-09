# 출판사를 기준으로 category의 count를 집계한다.
select 
	*
    from
	(select
	#	rank() over(partition by publisher_id order by book_count desc) as `rank`,				# 공동 2등이 두 개 있다면 그 다음 순위는 4등 
	#	dense_rank() over(partition by publisher_id order by book_count desc) as `dense_rank`, 	# 공동 2등이 두 개 있다면 그 다음 순위는 3등
		row_number() over(partition by publisher_id order by book_count desc) as `num`, 		# row_number는 순위에 중복이 없음
		pc_count_tb.*
	from 
		(select
			publisher_id,
			category_id,
			count(*) as book_count
		from
			book_tb
		group by
			publisher_id,
			category_id) as pc_count_tb) as book_row_number_tb
where
	num = 1;

# from에서 where를 만족하는 값을 select에 해당하는 조건으로 나타낸다. 
# partition by 에서 order by 순위를 정한다. 
select
	student_name,
    class,
    score
from
	(select
	row_number() over(partition by class order by score ) as `rank`,	
    # class별로 score를 오름차순 정렬해 순위를 정한다.
		student_name,
		class,
		score
	from 
		student_tb) as tb
where
	`rank` = 1;