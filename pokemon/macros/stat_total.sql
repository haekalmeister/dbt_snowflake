{% macro stat_total(hp, attack, defense, special_attack, special_defense, speed) %}
  ({{ hp }} + {{ attack }} + {{ defense }} + {{ special_attack }} + {{ special_defense }} + {{ speed }})
{% endmacro %}
