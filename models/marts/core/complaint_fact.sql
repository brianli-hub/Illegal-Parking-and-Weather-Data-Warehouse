SELECT unique_key, agency_dim_id, complaint_dim_id, location_dim_id, date_dim_id 

FROM `focused-history-305115.CIS4400_Project.Illegal_parking_2018-2020` AS sr 

           INNER JOIN {{ref ('stg_agency')}} AS  agency_dim ON agency_dim.agency = sr.agency AND agency_dim.agency_name = sr.agency_name 
           INNER JOIN {{ref ('stg_complaint')}} AS complaint_dim ON complaint_dim.complaint_type = sr.complaint_type AND complaint_dim.descriptor = sr.descriptor
           INNER JOIN {{ref ('stg_complaint_date')}} AS date_dimension  ON date_dimension.full_date = sr.created_date
           INNER JOIN {{ref ('stg_complaint_location')}}  AS location_dim  ON location_dim.city = sr.city AND location_dim.borough = sr.borough AND location_dim.incident_zip=sr.incident_zip AND location_dim.latitude = sr.latitude AND location_dim.longitude = sr.longitude
