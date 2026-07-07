select id,
max(case when month ='jan' then revenue end) as jan_revenue,
max(case when month ='feb' then revenue end) as feb_revenue,
max(case when month ='mar' then revenue end) as mar_revenue,
max(case when month ='apr' then revenue end) as apr_revenue,
max(case when month ='may' then revenue end) as may_revenue,
max(case when month ='jun' then revenue end) as jun_revenue,
max(case when month ='jul' then revenue end) as jul_revenue,
max(case when month ='aug' then revenue end) as aug_revenue,
max(case when month ='sep' then revenue end) as sep_revenue,
max(case when month ='oct' then revenue end) as oct_revenue,
max(case when month ='nov' then revenue end) as nov_revenue,
max(case when month ='dec' then revenue end) as dec_revenue 
from department 
group by id