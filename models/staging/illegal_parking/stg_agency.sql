SELECT ROW_NUMBER() OVER() as agency_dim_id, agency, agency_name
FROM

(SELECT DISTINCT agency, agency_name 

    from `focused-history-305115.CIS4400_Project.Illegal_parking_2018-2020`
)

