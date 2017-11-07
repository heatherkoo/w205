
drop table tbl_effective_care
;
create table tbl_effective_care as 
select 
provider_id,
measure_id,
measure_name,
cast(score as decimal) as score,
measure_start_dt as measure_start_date_orig,
cast(
concat (substr(measure_start_dt, 7, 4),
     '-',
    substr(measure_start_dt, 1, 2),  
     '-',
     substr(measure_start_dt,  4, 2)
     ) as date 
) as measure_start_dt,
measure_end_dt as measure_end_date_orig,
cast(
concat (substr(measure_end_dt, 7, 4),
     '-',
    substr(measure_end_dt, 1, 2),  
     '-',
     substr(measure_end_dt,  4, 2)
     ) as date 
) as measure_end_dt,
footnote
from effective_care
where measure_id in('OP_29','PC_01','VTE_5','OP_30','OP_31','OP_2','OP_23','OP_4')
;

