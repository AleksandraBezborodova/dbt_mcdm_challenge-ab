select *
from {{ ref('stg_bing_ads_data') }}

union all

select *
from {{ ref('stg_creative_facebook_ads_data') }}

union all

select *
from {{ ref('stg_tiktok_ads_data') }}

union all

select *
from {{ ref('stg_promoted_tweets_twitter_data') }}
