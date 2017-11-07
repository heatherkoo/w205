select state,
avg(avg_measure_rtg) as avg_measure_rtg,
avg(rating) as avg_overall_rtg
from(
select provider_id,
hospital_name,
state,
hosp_type,
hosp_owner,
rating,
avg(measure_rtg) as avg_measure_rtg
from tbl_hospitals
group by provider_id, hospital_name,
state, hosp_type, hosp_owner, rating ) as hosp
group by state
order by avg(rating) desc, avg(avg_measure_rtg) desc
limit 10
;
