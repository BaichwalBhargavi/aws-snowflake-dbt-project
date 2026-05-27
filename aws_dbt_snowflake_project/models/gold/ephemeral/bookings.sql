{{
    config(
        materialized= "ephemeral"
    )
}}

WITH BOOKINGS as (
    SELECT 
    BOOKING_ID, BOOKING_DATE, BOOKING_STATUS, CREATED_AT
    FROM AIRBNB.GOLD.OBT
)

Select * from BOOKINGS