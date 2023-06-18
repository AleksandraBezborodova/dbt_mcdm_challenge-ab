select *
from {{ ref('stg_bing_ads_data') }}, {{ ref('stg_creative_facebook_ads_data') }}
