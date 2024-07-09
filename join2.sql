insert into dvd_tb (registration_number, title, producer_id, publisher_id, publiscation_year, database_date)
select
    등록번호,
    제목,
    pdt.producer_id,
    publisher_id,
    발행년,
    데이터기준일자
    
from
	sample_dvd_tb sdt
    left outer join producer_tb pdt on(pdt.producer_name = sdt.제작자)
    left outer join publisher_tb pbt on(pbt.publisher_name = sdt.발행자)limit 0, 10;    

	select * from dvd_tb;