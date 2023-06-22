

SELECT 
channel,
CASE WHEN clicks = 0 THEN 0
ELSE  
spend/clicks 
END as cpc,
CASE WHEN engagements = 0 THEN 0
ELSE spend/engagements 
END as cpe,
impressions as imp,
CASE WHEN conversions = 0 THEN 0
ELSE spend/conversions 
END as cpconv
FROM (
SELECT 	
channel,
SUM(spend) as spend,	
SUM(clicks) as clicks,	
SUM(engagements) as engagements ,	
SUM(impressions) as impressions,			
SUM(total_conversions) conversions	


from {{ref('ads_basic_performance_report')}}
GROUP BY 
channel
)