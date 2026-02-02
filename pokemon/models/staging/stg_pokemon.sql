WITH source as(
    SELECT * FROM {{ source('pokemon_raw', 'master_pokemon') }}
)

select
    "#"::int as pokedex_number,
    "Name" as name,
    "Type 1" as primary_type,
    "Type 2" as secondary_type,
    "Total" as total_stats,
    "HP" as hp,
    "Attack" as attack,
    "Defense" as defense,
    "Sp. Atk" as special_attack,
    "Sp. Def" as special_defense,
    "Speed" as speed,
    "Generation" as generation,
    "Legendary" as is_legendary
from source