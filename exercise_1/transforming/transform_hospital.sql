drop table tbl_hospitals;
create table tbl_hospitals as 
select 
provider_id,
hospital_name,
state,
hosp_type,
hosp_owner,
cast(rtg_overall as decimal(1,0)) rating,
'readmits' as measure_type,
case when readmits_comp like '%Below%' then 1
when readmits_comp like '%Above%' then 3
when readmits_comp like '%Same%' then 2
else NULL end as measure_rtg
from hospitals

UNION

select 
provider_id,
hospital_name,
state,
hosp_type,
hosp_owner,
cast(rtg_overall as decimal(1,0)) rating,
'eff_care' as measure_type,
case when eff_care_comp like '%Below%' then 1
when eff_care_comp like '%Above%' then 3
when eff_care_comp like '%Same%'  then 2
else NULL end as measure_rtg
from hospitals

UNION

select 
provider_id,
hospital_name,
state,
hosp_type,
hosp_owner,
cast(rtg_overall as decimal(1,0)) rating,
'time_care' as measure_type,
case when time_care_comp like '%Below%' then 1
when time_care_comp like '%Above%' then 3
when time_care_comp like '%Same%'  then 2
else NULL end as measure_rtg
from hospitals

UNION

select 
provider_id,
hospital_name,
state,
hosp_type,
hosp_owner,
cast(rtg_overall as decimal(1,0)) rating,
'mort' as measure_type,
case when mort_comp like '%Below%' then 1
when mort_comp like '%Above%' then 3
when mort_comp like '%Same%'  then 2
else NULL end as measure_rtg
from hospitals

UNION

select 
provider_id,
hospital_name,
state,
hosp_type,
hosp_owner,
cast(rtg_overall as decimal(1,0)) rating,
'safetycare' as measure_type,
case when safetycare_comp like '%Below%' then 1
when safetycare_comp like '%Above%' then 3
when safetycare_comp like '%Same%'  then 2
else NULL end as measure_rtg
from hospitals

UNION

select 
provider_id,
hospital_name,
state,
hosp_type,
hosp_owner,
cast(rtg_overall as decimal(1,0)) rating,
'pat_exp' as measure_type,
case when pat_exp_comp like '%Below%' then 1
when pat_exp_comp like '%Above%' then 3
when pat_exp_comp like '%Same%'  then 2
else NULL end as measure_rtg
from hospitals

UNION

select 
provider_id,
hospital_name,
state,
hosp_type,
hosp_owner,
cast(rtg_overall as decimal(1,0)) rating,
'eff_use_img' as measure_type,
case when eff_use_img_comp like '%Below%' then 1
when eff_use_img_comp like '%Above%' then 3
when eff_use_img_comp like '%Same%'  then 2
else NULL end as measure_rtg
from hospitals
;

