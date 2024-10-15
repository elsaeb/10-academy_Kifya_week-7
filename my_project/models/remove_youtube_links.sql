SELECT
    *
FROM {{ ref('remove_duplicates') }}
WHERE message NOT LIKE '%youtube.com%'  -- Exclude rows with YouTube links
AND message NOT LIKE '%youtu.be%';
