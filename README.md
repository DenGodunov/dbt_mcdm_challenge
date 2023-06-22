### If you want to add new ads platfrom  data source
1. You need to prepare source to target (s2t) doc for example in excel file.
To do this open mcdm_paid_ads_basic_performance_structure.csv and add try to match fields in your data source with mcdm_field_name.
In the end you will have a table like this:

| MCDM field       | Your data source field |
|------------------|------------------------|
| total_conersions | conv                   |
| likes            | 0                      |
| ad_id            | ad_id                  |


- As you can see if you don't have matching field in you source then place NUll for categorical and 0 for countable in front of MCDM field
- Example of s2t you can find in s2t folder: s2t_bing.MD

2. Then you need to write data transformation file and place it into models/ads_performance
3. Run dbt 'run command' for your new model
4. Add result of your model to ads_basic_performance_report model 

### General approach to solve this project
1. Create a table that we want to receive at the end of the project with approximate values for each platform and KPI  
1.1 if we open report https://lookerstudio.google.com/reporting/fa668749-b82f-41a8-a12e-f7d9c0733b57/page/tEnnC we can make assumptions about min and max values for each KPI:

|   | Platform | Conversion Cost Min| Conversion Cost Max | Imressions Min | Imressions Max | Cost Per Engage Min|Cost Per Engage Max  | CPC Min  | CPC Max  |
|---|----------|--------------------|----------------------|---------------|----------------|--------------------|---------------------|----------|----------|
| 1 | TikTok   | 2000               | 4000                 | 35000000      | 48000000       |                  0 | 0.05                | 1.1      | 1.2      |
| 2 | Bing     | 10                 | 30                   | 0             | 1000000        |                  0 | 0.05                | 0.8      | 0.9      |
| 3 | Facebook | 5                  | 20                   | 5000000       | 7500000        |                0.1 | 0.15                | 0.9      | 1.1      |
| 4 | Twitter  | 0                  | 5                    | 7500000       | 10000000       |               0.46 | 0.48                | 0.48     | 0.52     |

1.2 Create s2t mapping between MCDM and each platform data set based on assumption that field names in MCDM and platrorm data set should be very similar ("conversion" and "conv" etc.)  
1.3 For each platform create and fill table grouped by categorical fields (this fields could be used in future as filters or dimensions)in BigQuery  
1.4 Try naive approach - let's assume our mapping is correct, let's try calculate each KPI and compare it with desirable output from step 1.1  
1.5 If we see that values for each KPI in range between min and max than we assume that mapping is correct  
Otherwise we trying to find next candidate to recieve expected KPI value. Once we found good candidate we can update our initail mapping.
1.6 Next step is to combine all tables into one view that should serve as data source for report  
1.7 Create report with chart for each KPOI
1.8 Compare report from 1.7 with requested one
