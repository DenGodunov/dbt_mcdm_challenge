### If you want to add new ads platfrom  data source
1. You need to prepare source to target (s2t) doc for examole in excel file.
To do this open mcdm_paid_ads_basic_performance_structure.csv and add try to match fields in your data source with mcdm_field_name.
In the end you will have a tabe like this:

| MSDM field            | Your data source field |
|------------------|-------|
| total_conersions | conv  |
| likes            | 0     |
| ad_id            | ad_id |

2. Then you need to write data transformation file in plase into models/ads_performance
3. Run dbt 'run command' for your new model
4. Add result of you model to ads_basic_performance_report model 