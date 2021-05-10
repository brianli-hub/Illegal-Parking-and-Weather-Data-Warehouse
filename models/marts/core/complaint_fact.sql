With final as (

SELECT unique_key, agency_dim_id, complaint_dim_id, location_dim_id, date_dim_id 

FROM `focused-history-305115.CIS4400_Project.Illegal_parking_2018-2020` AS sr 

           INNER JOIN {{ref ('stg_agency')}} USING(agency) 
           INNER JOIN {{ref ('stg_complaint')}} USING (complaint_type) 
           INNER JOIN {{ref ('stg_complaint_date')}} AS date_dimension  ON date_dimension.full_date = sr.created_date 
           INNER JOIN {{ref ('stg_complaint_location')}}  AS location_dim  ON location_dim.city = sr.city AND location_dim.borough = sr.borough AND location_dim.incident_zip=sr.incident_zip
)

select
    agency_dim_id, 
    complaint_dim_id, 
    location_dim_id, 
    date_dim_id,
    count(*) as number_of_complaints
from final
group by 
    agency_dim_id, 
    complaint_dim_id, 
    location_dim_id, 
    date_dim_id

