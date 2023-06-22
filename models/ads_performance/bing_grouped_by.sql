
select 
ad_id as ad_id,
0 as add_to_cart,
adset_id as adset_id,
campaign_id as campaign_id,
"BING" as channel,
SUM(clicks) as clicks,
0 as comments,
NULL as creative_id,
date as date,
0 as engagements,
SUM(imps) as impressions,
0 as installs,
0 as likes,
0 as link_clicks,
NULL as placement_id,
0 as post_click_conversions,
0 as post_view_conversions,
0 as posts,
0 as purchase,
0 as registrations,
SUM(revenue) as revenue,
0 as shares,
SUM(spend) as spend,
SUM(conv) as total_conversions,
0 as video_views

from {{ ref('src_ads_bing_all_data')}}
GROUP BY
ad_id,
adset_id,
campaign_id,
date