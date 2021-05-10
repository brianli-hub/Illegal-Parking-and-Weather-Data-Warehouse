SELECT ROW_NUMBER() OVER() as location_dim_id, city, borough, zipcode
FROM

(SELECT DISTINCT city, borough, zipcode

    from `focused-history-305115.CIS4400_Project.Weather_2018-2020`
)

