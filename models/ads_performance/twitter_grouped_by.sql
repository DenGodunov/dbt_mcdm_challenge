
SELECT 
NULL as ad_id,
0 as add_to_cart,
NULL as adset_id,
campaign_id as campaign_id,
"TWITTER" as channel,
SUM(clicks) as clicks,
SUM(comments) as comments,
NULL as creative_id,
date as date,
SUM(engagements) as engagements,
SUM(impressions) as impressions,
0 as installs,
SUM(likes) as likes,
SUM(url_clicks) as link_clicks,
NULL as placement_id,
0 as post_click_conversions,
0 as post_view_conversions,
0 as posts,
0 as purchase,
0 as registrations,
0 as revenue,
0 as shares,
SUM(spend) as spend,
0 as total_conversions,
SUM(video_total_views) as video_views
from {{ ref('src_promoted_tweets_twitter_all_data')}}
 GROUP BY 
campaign_id,
date

