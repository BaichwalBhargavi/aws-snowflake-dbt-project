{% set configs = [
    {
        "table" : "AIRBNB.GOLD.OBT",
        "columns": "GOLD_OBT.BOOKING_ID,GOLD_OBT.LISTING_ID, GOLD_OBT.HOST_ID, GOLD_OBT.TOTAL_BOOKING_AMOUNT, GOLD_OBT.ACCOMMODATES,
        GOLD_OBT.BEDROOMS,GOLD_OBT.BATHROOMS,GOLD_OBT.PRICE_PER_NIGHT,GOLD_OBT.RESPONSE_RATE",
        "alias": "GOLD_OBT",
    
    },
    {
        "table": "AIRBNB.GOLD.dim_LISTINGS",
        "columns": "",
        "alias": "dim_listings",
        "join_condition" :"GOLD_OBT.listing_id = dim_listings.listing_id"
    },
    {
        "table": "AIRBNB.GOLD.dim_HOSTS",
        "columns": "",
        "alias": "dim_hosts",
        "join_condition" :"GOLD_OBT.host_id = dim_hosts.host_id"
    }
]

%}


select 
        {{configs[0]['columns']}}
FROM
{% for config in configs %}
 {% if loop.first %}
 {{config['table']}} as {{config['alias']}}
 {% else %} 
    LEFT JOIN {{config['table']}} as {{config['alias']}} on {{config['join_condition']}} 
    {% endif %} 
    {% endfor %} 
