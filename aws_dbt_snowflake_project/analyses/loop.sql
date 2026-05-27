{% set cols =['booking_id','nights_booked','booking_amount']%}

Select 
{% for col in cols %}
    {{col}}
    {% if not loop.last%}, {%endif%}
    {%endfor%}
    from {{ref('bronze_bookings')}}