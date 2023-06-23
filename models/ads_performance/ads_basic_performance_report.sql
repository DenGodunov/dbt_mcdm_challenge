{{ config(materialized='view') }}

SELECT 
ad_id,
add_to_cart,	
adset_id,	
campaign_id,	
channel,	
clicks,	
comments,	
creative_id,
date,	
engagements,	
impressions,	
installs,	
likes,	
link_clicks,
placement_id,	
post_click_conversions,	
post_view_conversions,	
posts,	
purchase,	
registrations,	
revenue,	
shares,	
spend,	
total_conversions,	
video_views

from {{ source('ads','bing') }}

UNION ALL

SELECT 
ad_id,
add_to_cart,	
adset_id,	
campaign_id,	
channel,	
clicks,	
comments,	
creative_id,
date,	
engagements,	
impressions,	
installs,	
likes,	
link_clicks,
placement_id,	
post_click_conversions,	
post_view_conversions,	
posts,	
purchase,	
registrations,	
revenue,	
shares,	
spend,	
total_conversions,	
video_views

from {{ source('ads','twitter') }}

UNION ALL

SELECT 
ad_id,
add_to_cart,	
adset_id,	
campaign_id,	
channel,	
clicks,	
comments,	
creative_id,
date,	
engagements,	
impressions,	
installs,	
likes,	
link_clicks,
placement_id,	
post_click_conversions,	
post_view_conversions,	
posts,	
purchase,	
registrations,	
revenue,	
shares,	
spend,	
total_conversions,	
video_views
FROM {{ source('ads','tiktok') }}

UNION ALL

SELECT
ad_id,
add_to_cart,
adset_id,
campaign_id,
channel,
clicks,
comments,
creative_id,
date,
engagements,
impressions,
installs,
likes,
link_clicks,
placement_id,
post_click_conversions,	
post_view_conversions,	
posts,
purchase,
registrations,
revenue,
shares,
spend,
total_conversions,
video_views
FROM {{ source('ads','facebook') }}
