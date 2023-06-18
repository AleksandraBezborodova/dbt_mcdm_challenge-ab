select channel, safe_divide(sum(spend), sum(total_conversions)) as conversion_cost
from {{ ref('paid_ads__basic_performance') }}
