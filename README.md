# Marketing common data modelling challenge
	Welcome to Marketing common data modelling challenge!

## Task
	At Improvado, we use marketing common data models (MCDM) to map data from various ad platforms into a single one. MCDM can help marketers with questions like: "Where clicks better on facebook or tiktok?"

Imagine that MCDM-model behind dashboard, is lost somehow. You need to rebuilt it. You have:
	— raw data from the ad systems (seeds folder),
	- the MCDM table structure for this report, 
	- and [dashboard](https://lookerstudio.google.com/reporting/fa668749-b82f-41a8-a12e-f7d9c0733b57/page/tEnnC)


In this situation, we've got checklist that you can follow (or not):
	- Begin a new project in dbt Cloud, utilizing Google Big Query as the DWH.
	- Use the raw data from the ad platforms and the MCDM table structure for the ads_basic_performance report.

### How to Submit
please provide answer in the [typeform](https://improvado.typeform.com/to/efqlu4kP)
-   A link to your dbt Cloud repository that contains the completed MCDM for the ads_basic_performance report.
-   A link to the recreated dashboard.
-   A brief set of instructions (in md file in your repo) for adding data from new ad platforms into your MCDM.

## Hints:
	- *Cost per engage* is just a spended sum divided by sum of engagements
	- *Conversion cost* is calculated by dividing sum of spended by total conversions count
	- *Impressions by channel* is a sum of impressions for each channel
	- *CPC* gets like sum of spended divided by clicks count

### If you want to add new ads platfrom  data source
1. You need to prepare source to target (s2t) doc for examole in excel file.
To do this open mcdm_paid_ads_basic_performance_structure.csv and add try to match fields in your data source with mcdm_field_name.
In the end you will have a tabe like this
|MSDM field|Your data source field|
|ad_id|ad_id|
|adset_id|NULL|
|total_conversions|conv|
|likes|0|
...
2. Then you need to write data transformation file in plase into models/ads_performance
3. Run dbt 'run command' for your new model
4. Add result of you model to ads_basic_performance_report model 

 

