select *
from {{ ref('stg_bing_ads_data') }}

union all

select *
from {{ ref('stg_creative_facebook_ads_data') }}
