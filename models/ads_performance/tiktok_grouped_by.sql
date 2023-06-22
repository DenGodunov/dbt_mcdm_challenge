--  TIKTOK platfrom basic aggregation transformation

SELECT
	ad_id as ad_id,
	SUM(add_to_cart) as add_to_cart,
	adgroup_id as adset_id,
	campaign_id as campaign_id,
	"TIKTOK" as channel,
	SUM(clicks) as clicks,
	0 as comments,
	NULL as creative_id,
	date as date,
	0 as engagements,
	SUM(impressions) as impressions,
	SUM(rt_installs) as installs,
	0 as likes,
	0 as link_clicks,
	NULL as placement_id,
	0 as post_click_conversions,
	0 as post_view_conversions,
	0 as posts,
	SUM(purchase) as purchase,
	SUM(registrations) as registrations,
	0 as revenue,
	0 as shares,
	SUM(spend) as spend,
	SUM(conversions) as total_conversions,
	SUM(video_views) as video_views
FROM {{ ref('src_ads_tiktok_ads_all_data')}}
GROUP BY 
	ad_id,
	adgroup_id,
	campaign_id,
	date

