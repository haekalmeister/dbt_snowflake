select
    pokedex_number,
    name,
    primary_type,
    secondary_type,
    total_stats,
    generation
from {{ ref('stg_pokemon') }}
ORDER BY total_stats DESC
LIMIT 10