-- Fail if the top_10 model doesn't have exactly 10 rows.
select
  count(*) as row_count
from {{ ref('top_10_pokemon_stats') }}
having count(*) != 10
