select channel, safe_divide(sum(spend), sum(clicks)) as cpc
from {{ ref('paid_ads__basic_performance') }}
group by channel
