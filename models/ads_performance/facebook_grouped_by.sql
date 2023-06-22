
select
ad_id as ad_id,
0 as add_to_cart,
adset_id as adset_id,
campaign_id as campaign_id,
"FACEBOOK" as channel,
SUM(clicks) as clicks,
SUM(comments) as comments,
creative_id as creative_id,
date as date,
SUM(views) as engagements,
SUM(impressions) as impressions,
SUM(mobile_app_install) as installs,
0 as likes,
0 as link_clicks,
NULL as placement_id,
0 as post_click_conversions,
0 as post_view_conversions,
0 as posts,
SUM(purchase_value) as purchase_value,
SUM(purchase) as purchase,
SUM(complete_registration) as registrations,
0 as revenue,
SUM(shares) as shares,
SUM(spend) as spend,
SUM(purchase) as total_conversions,
0 as video_views
from {{ ref('src_ads_creative_facebook_all_data')}}
GROUP BY 
ad_id,
adset_id,
campaign_id,
creative_id,
date

