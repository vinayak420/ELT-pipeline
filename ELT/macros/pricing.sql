{% macro discounted_price(price, discount_percentage, scale=2) %}
    (-1 * {{ price }} * {{ discount_percentage }})::decimal(16,{{scale}})
{% endmacro %}