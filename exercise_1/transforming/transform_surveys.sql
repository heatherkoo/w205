drop table tbl_surveys;
create table tbl_surveys as
select
provider_id,
cast(comm_nurses_bench as decimal(4,2)) as comm_nurses_bench,
cast(comm_nurses_perf as decimal(4,2)) as comm_nurses_perf,

cast(comm_doc_bench as decimal(4,2)) as comm_doc_bench,
cast(comm_doc_perf as decimal(4,2)) as comm_doc_perf,

cast(resp_hosp_staff_bench as decimal(4,2)) as resp_hosp_staff_bench,
cast(resp_hosp_staff_perf as decimal(4,2)) as resp_hosp_staff_perf,

cast(pain_mgmt_bench as decimal(4,2)) as pain_mgmt_bench,
cast(pain_mgmt_perf as decimal(4,2)) as pain_mgmt_perf,

cast(comm_med_bench as decimal(4,2)) as comm_med_bench,
cast(comm_med_perf as decimal(4,2)) as comm_med_perf,

cast(cleanquiet_env_bench as decimal(4,2)) as cleanquiet_env_bench,
cast(cleanquiet_env_perf as decimal(4,2)) as cleanquiet_env_perf,

cast(discharge_info_bench as decimal(4,2)) as discharge_info_bench,
cast(discharge_info_perf as decimal(4,2)) as discharge_info_perf,

cast(overall_bench as decimal(4,2)) as overall_bench,
cast(overall_perf as decimal(4,2)) as overall_perf
from surveys_responses
;

