{% macro validate_numeric(column_name) %}

CASE
    WHEN TRY_TO_NUMBER({{ column_name }}) IS NOT NULL
        THEN TRY_TO_NUMBER({{ column_name }})
    ELSE 0
END

{% endmacro %}