select
    pokedex_number,
    name,
    primary_type,
    total_stats,
    secondary_type,
    generation
from {{ ref('stg_pokemon') }}
ORDER BY total_stats DESC
LIMIT 10;