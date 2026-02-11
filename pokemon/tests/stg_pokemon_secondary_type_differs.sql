-- Fail if a Pokemon has the same primary and secondary type.
select
  pokedex_number,
  name,
  primary_type,
  secondary_type
from {{ ref('stg_pokemon') }}
where secondary_type is not null
  and secondary_type = primary_type
