{{config(materialized ='incremental',unique_key = 'BOOKING_ID')}}

Select BOOKING_ID,
LISTING_ID,
BOOKING_DATE,
{{multiply('NIGHTS_BOOKED','BOOKING_AMOUNT')}} + CLEANING_FEE + SERVICE_FEE as TOTAL_BOOKING_AMOUNT,
BOOKING_STATUS,
CREATED_AT

from {{ref('bronze_bookings')}}

