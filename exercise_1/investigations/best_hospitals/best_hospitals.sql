
select provider_id,
hospital_name,
state,
hosp_type,
hosp_owner,
rating,
avg(measure_rtg) as avg_measure_rtg
from tbl_hospitals
group by provider_id, hospital_name,
state, hosp_type, hosp_owner, rating 
order by rating desc, avg(measure_rtg) desc
limit 10
;

