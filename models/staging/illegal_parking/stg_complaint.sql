SELECT ROW_NUMBER() OVER() as complaint_dim_id, complaint_type, descriptor
FROM

(SELECT DISTINCT complaint_type, descriptor

    from `focused-history-305115.CIS4400_Project.Illegal_parking_2018-2020`
)


