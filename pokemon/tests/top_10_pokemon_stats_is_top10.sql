-- Fail if any Pokemon with higher total_stats is missing from top_10.
with top_10 as (
  select
    pokedex_number,
    total_stats
  from {{ ref('top_10_pokemon_stats') }}
),
threshold as (
  select min(total_stats) as min_top_10_total
  from top_10
)
select
  s.pokedex_number,
  s.name,
  s.total_stats
from {{ ref('stg_pokemon') }} s
cross join threshold t
where s.total_stats > t.min_top_10_total
  and s.pokedex_number not in (select pokedex_number from top_10)
