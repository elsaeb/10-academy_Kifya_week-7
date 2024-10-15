SELECT
    Channel Username,
    ID,
    Message,
    TO_CHAR(Date, 'YYYY-MM-DD HH24:MI:SS') AS standardized_date,  -- Standardize date format
    media_path
FROM {{ ref('remove_youtube_links') }};
