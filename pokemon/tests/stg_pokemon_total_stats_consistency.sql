-- Fail if total_stats doesn't equal the sum of component stats.
select
  pokedex_number,
  name,
  total_stats,
  hp,
  attack,
  defense,
  special_attack,
  special_defense,
  speed
from {{ ref('stg_pokemon') }}
where total_stats
  != {{ stat_total('hp', 'attack', 'defense', 'special_attack', 'special_defense', 'speed') }}
