select 
	*
from
	master_tb mt
    left outer join join1_tb jt1 on(jt1.join1_id = mt.name_id and jt1 .join1_id < 4) 
    left outer join join2_tb jt2 on(jt2.join2_id = mt.phone_id)