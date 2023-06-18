with source as (
  select *
  from {{ ref('') }}
),
transform as (
  	select	
    		ad_id as ad_id,
    		as add_to_cart,
    		adset_id as adset_id,
    		campaign_id as campaign_id,
    		channel as channel,
    		clicks as clicks,
    		0 as comments,
    		0 as creative_id,
    		date as date,
    		as engagements,
    		imps as impressions,
    		as installs,
    		as likes,
    		as link_clicks,
    		as placement_id,
    		as post_click_conversions,
    		as post_view_conversions,
    		as posts,
    		as purchase,
    		as registrations,
    		revenue as revenue,
    		as shares,
    		spend as spend,
    		conv as total_conversions,
    		as video_views
  	from source
)

select * 
from transform
