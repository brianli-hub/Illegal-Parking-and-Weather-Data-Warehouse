SELECT ROW_NUMBER() OVER() as date_dim_id, date_integer, full_date, year, year_week, year_day, fiscal_year, fiscal_qtr, month, month_name, week_day, day_name, day_is_weekday
FROM

(SELECT DISTINCT date_integer, full_date, year, year_week, year_day, fiscal_year, fiscal_qtr, month, month_name, week_day, day_name, day_is_weekday

    from `focused-history-305115.CIS4400_Project.date_dimension`
)
