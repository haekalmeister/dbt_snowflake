-- macros/generate_schema_name.sql
{% macro generate_schema_name(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    
    {%- if custom_schema_name is none -%}
        -- If no folder config, go to default (e.g. analytics)
        {{ default_schema }}
    
    {%- else -%}
        -- If folder config exists, use it EXACTLY (e.g. finance)
        {{ custom_schema_name | trim }}
    
    {%- endif -%}

{%- endmacro %}