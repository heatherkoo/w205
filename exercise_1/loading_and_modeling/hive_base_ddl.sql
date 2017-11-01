DROP TABLE hospitals;

CREATE EXTERNAL TABLE hospitals
(
  provider_id string,
  hospital_name string,
  address string,
  city string,
  state string,
  zip_code string,
  county_name string,
  phone_num string,
  hosp_type string,
  hosp_owner string,
  emerg_serv string,
  crit_ehr string,
  rtg_overall string,
  rtg_overall_fn string,
  mort_comp string,
  mort_comp_fn string,
  safetycare_comp string,
  safetycare_comp_fn string,
  readmits_comp string,
  readmiss_comp_fn string,
  pat_exp_comp string,
  pat_exp_comp_fn string,
  eff_care_comp string,
  eff_care_comp_fn string,
  time_care_comp string,
  time_care_comp_fn string,
  eff_use_img_comp string,
  eff_use_img_comp_fn string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "separatorChar" = ',',
  "quoteChar" = '"',
  "escapeChar" = '\\'
)

STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/hospitals'
;

DROP TABLE effective_care;

CREATE EXTERNAL TABLE effective_care
(
  provider_id string,
  hospital_name string,
  address string,
  city string,
  state string,
  zip_code string,
  county_name string,
  phone_num string,
  condition string,
  measure_id string,
  measure_name string,
  score string,
  sample string, 
  footnote string,
  measure_start_dt string,
  measure_end_dt string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "separatorChar" = ',',
  "quoteChar" = '"',
  "escapeChar" = '\\'
)

STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/effective_care'
;

DROP TABLE readmissions;

CREATE EXTERNAL TABLE readmissions
(
  provider_id string,
  hospital_name string,
  address string,
  city string,
  state string,
  zip_code string,
  county_name string,
  phone_num string,
  measure_name string,
  measure_id string,
  comp_to_natl string,
  denominator string,
  score string,
  est_low string, 
  est_high string,
  footnote string,
  measure_start_dt string,
  measure_end_dt string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "separatorChar" = ',',
  "quoteChar" = '"',
  "escapeChar" = '\\'
)

STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/readmissions'
;

DROP TABLE measures;

CREATE EXTERNAL TABLE measures
(
  measure_name string,
  measure_id string,
  measure_start_qt string,
  measure_start_dt string,
  measure_end_qt string,
  measure_end_dt string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "separatorChar" = ',',
  "quoteChar" = '"',
  "escapeChar" = '\\'
)

STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/measures'
;

DROP TABLE surveys_responses;

CREATE EXTERNAL TABLE surveys_responses
(
  provider_id string,
  hospital_name string,
  address string,
  city string,
  state string,
  zip_code string,
  county_name string,
  comm_nurses_flr string,
  comm_nurses_ach_thres string,
  comm_nurses_bench string,
  comm_nurses_baseline string,
  comm_nurses_perf string,
  comm_nurses_ach_pts string,
  comm_nurses_imprv_pts string,
  comm_nurses_dim_score string,

  comm_doc_flr string,
  comm_doc_ach_thres string,
  comm_doc_bench string,
  comm_doc_baseline string,
  comm_doc_perf string,
  comm_doc_ach_pts string,
  comm_doc_imprv_pts string,
  comm_doc_dim_score string,

  resp_hosp_staff_flr string,
  resp_hosp_staff_ach_thres string,
  resp_hosp_staff_bench string,
  resp_hops_staff_baseline string,
  resp_hosp_staff_perf string,
  resp_hosp_staff_ach_pts string,
  resp_hosp_staff_imprv_pts string,
  resp_hosp_staff_dim_score string,

  pain_mgmt_flr string,
  pain_mgmt_ach_thres string,
  pain_mgmt_bench string,
  pain_mgmt_baseline string,
  pain_mgmt_perf string,
  pain_mgmt_ach_pts string,
  pain_mgmt_imprv_pts string,
  pain_mgmt_dim_score string,

  comm_med_flr string,
  comm_med_ach_thres string,
  comm_med_bench string,
  comm_med_baseline string,
  comm_med_perf string,
  comm_med_ach_pts string,
  comm_med_imprv_pts string,
  comm_med_dim_score string,

  cleanquiet_env_flr string,
  cleanquiet_env_ach_thres string,
  cleanquiet_env_bench string,
  cleanquiet_env_baseline string,
  cleanquiet_env_perf string,
  cleanquiet_env_ach_pts string,
  cleanquiet_env_imprv_pts string,
  cleanquiet_env_dim_score string,

  discharge_info_flr string,
  discharge_info_ach_thres string,
  discharge_info_bench string,
  discharge_info_baseline string,
  discharge_info_perf string,
  discharge_info_ach_pts string,
  discharge_info_imprv_pts string,
  discharge_info_dim_score string,

  overall_flr string,
  overall_ach_thres string,
  overall_bench string,
  overall_baseline string,
  overall_perf string,
  overall_ach_pts string,
  overall_imprv_pts string,
  overall_dim_score string

)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "separatorChar" = ',',
  "quoteChar" = '"',
  "escapeChar" = '\\'
)

STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/surveys_responses'
;
