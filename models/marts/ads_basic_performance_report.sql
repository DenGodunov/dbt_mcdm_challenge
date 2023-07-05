{{ dbt_utils.union_relations(

    relations=[ref('bing_grouped_by'), ref('tiktok_grouped_by'), ref('twitter_grouped_by'),ref('facebook_grouped_by')]

) }}