drop table tbl_measures;
create table tbl_measures as
select 
measure_name,
measure_id,
measure_start_qt,
measure_start_dt as measure_start_dt_orig,
cast(
concat (substr(measure_start_dt, 7, 4),
     '-',
    substr(measure_start_dt, 1, 2),  
     '-',
     substr(measure_start_dt,  4, 2)
     ) as date 
) as start_dt,
measure_end_qt,
measure_end_dt as measure_end_dt_orig,
cast(
concat (substr(measure_end_dt, 7, 4),
     '-',
    substr(measure_end_dt, 1, 2),  
     '-',
     substr(measure_end_dt,  4, 2)
     ) as date 
) as end_dt
from measures
;
