select channel, safe_divide(sum(spend), sum(engagements)) as cost_per_engage
from {{ ref('paid_ads__basic_performance') }}
group by channel
