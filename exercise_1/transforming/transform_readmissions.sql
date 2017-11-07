drop table tbl_readmissions;
create table tbl_readmissions as 
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
footnote,
comp_to_natl,
case when comp_to_natl like '%No Different%' then 2
when comp_to_natl like '%Worse%' then 1
when comp_to_natl like '%Better%' then 3 
else NULL end as comp_score
from readmissions
where measure_id <> 'PSI_4_SURG_COMP'
;

