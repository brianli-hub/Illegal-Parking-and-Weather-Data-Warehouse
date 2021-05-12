SELECT date_dim_id, location_dim_id, eventid, type, severity

FROM `focused-history-305115.CIS4400_Project.Weather_2018-2020` AS wr 

          INNER JOIN {{ref ('stg_weather_complaint_date')}} AS date_dimension  ON date_dimension.full_date = wr.StartTime_UTC_
          INNER JOIN {{ref ('stg_weather_location')}}  AS location_dim  ON location_dim.city = wr.city AND location_dim.borough = wr.borough AND location_dim.zipcode=wr.zipcode
