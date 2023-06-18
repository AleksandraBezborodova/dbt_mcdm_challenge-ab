select channel, sum(impressions) as impressions
from {{ ref('paid_ads__basic_performance') }}
group by channel
