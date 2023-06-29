{{ config(materialized='view') }}


{{ dbt_utils.union_relations(

    relations=[ source('ads','bing') , source('ads','twitter'), source('ads','tiktok'), source('ads','facebook') ]

) }}