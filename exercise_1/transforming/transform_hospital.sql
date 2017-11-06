drop table tbl_hospitals;
create table tbl_hospitals as 
select 
provider_id,
hospital_name,
state,
hosp_type,
hosp_owner,
cast(rtg_overall as decimal(1,0)) rating,
readmits_comp,
eff_care_comp,
time_care_comp,
mort_comp
from hospitals
;


