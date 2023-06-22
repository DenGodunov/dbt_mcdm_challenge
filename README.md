### If you want to add new ads platfrom  data source
1. You need to prepare source to target (s2t) doc for example in excel file.
To do this open mcdm_paid_ads_basic_performance_structure.csv and add try to match fields in your data source with mcdm_field_name.
In the end you will have a table like this:

| MCDM field            | Your data source field |
|------------------|-------|
| total_conersions | conv  |
| likes            | 0     |
| ad_id            | ad_id |

<ul>
As you can see if you don't have matching field in you source then place NUll for categorical and 0 for countable in front of MCDM field
Example of 2t you can find in s2t folder: s2t_bing.MD
</ul>

2. Then you need to write data transformation file and place it into models/ads_performance
3. Run dbt 'run command' for your new model
4. Add result of your model to ads_basic_performance_report model 
