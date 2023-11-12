{{
  config(
    materialized="view"
  )
}}

with source as (
    
    select 
      *
    from {{ source('london_criminal_activity', 'crime_by_lsoa') }}
    
),

renamed as (
    
    select
      *
    from source

),

filtered as (

  select 
    *
  from renamed
  where 1 = 1

)

select * from filtered
