select measure_id,
 measure_name,
min(score) as min_score,
max(score) as max_score,
max(score)-min(score) as score_diff
from tbl_readmissions
group by measure_id, measure_name
order by max(score)-min(score) desc
;

select measure_id,
 measure_name,
min(score) as min_score,
max(score) as max_score,
max(score)-min(score) as score_diff
from tbl_effective_care
group by measure_id, measure_name
order by max(score)-min(score) desc
;
