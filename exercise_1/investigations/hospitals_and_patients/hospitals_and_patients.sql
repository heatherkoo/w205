drop table tbl_survey_agg;
create table tbl_survey_agg as 

select 
provider_id,
(comm_nurses_perf + comm_doc_perf + resp_hosp_staff_perf + pain_mgmt_perf + comm_med_perf+ cleanquiet_env_perf + discharge_info_perf)/7.0 as surv_agg_score,
overall_perf
from surveys_responses
where overall_perf is not null
and comm_nurses_perf is not null
and comm_doc_perf is not null
and resp_hosp_staff_perf is not null
and pain_mgmt_perf is not null
and comm_med_perf is not null
and cleanquiet_env_perf is not null
and discharge_info_perf is not null
;

drop table tbl_hosp_agg;
create table tbl_hosp_agg as 

select 
provider_id,
hospital_name,
rating,
avg(measure_rtg) as avg_measure
from tbl_hospitals
where rating is not null and measure_rtg is not null
group by provider_id, hospital_name, rating
;


drop table hosp_surv;

create table hosp_surv as

select 
a.provider_id,
a.hospital_name,
a.rating,
a.avg_measure,
b.surv_agg_score,
b.overall_perf as surv_ovrl_score
from tbl_hosp_agg as a
inner join tbl_survey_agg as b
on a.provider_id = b.provider_id
;


select (avg(rating * surv_ovrl_score) - avg(rating) * avg(surv_ovrl_score)) / (stddev(rating) * stddev(surv_ovrl_score)) AS corr_overall,

(avg(avg_measure * surv_agg_score) - avg(avg_measure) * avg(surv_agg_score)) / (stddev(avg_measure) * stddev(surv_agg_score)) AS corr_proc
from hosp_surv
;



