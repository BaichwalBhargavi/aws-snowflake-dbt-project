{%macro tag(col)%}
  CASE 
  WHEN {{col}} < 100 then 'Low'
  WHEN {{col}} < 200 then 'Medium'
  ELSE 'High'
  END

{% endmacro %}