SELECT ROW_NUMBER() OVER() as location_dim_id, city, borough, incident_zip, latitude, longitude
FROM

(SELECT DISTINCT city, borough, incident_zip, latitude, longitude

    from `focused-history-305115.CIS4400_Project.Illegal_parking_2018-2020`
)

