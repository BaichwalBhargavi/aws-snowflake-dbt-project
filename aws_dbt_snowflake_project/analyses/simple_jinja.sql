{% set nights_booked =1 %}

Select * from {{ref('bronze_bookings')}}
where nights_booked > {{nights_booked}}