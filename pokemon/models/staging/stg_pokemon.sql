WITH source as(
    SELECT * FROM {{ source('pokemon_raw', 'master_pokemon') }}
)

select
    POKEDEX as pokedex_number,
    NAME as name,
    TYPE_1 as primary_type,
    TYPE_2 as secondary_type,
    TOTAL as total_stats,
    HP as hp,
    ATTACK as attack,
    DEFENSE as defense,
    SP_ATK as special_attack,
    SP_DEF as special_defense,
    SPEED as speed,
    GENERATION as generation,
    LEGENDARY as is_legendary
from source