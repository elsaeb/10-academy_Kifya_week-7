WITH distinct_messages AS (
    SELECT
        Channel_Username,
        ID,
        Message,
        Date,
        Media_Path,
        ROW_NUMBER() OVER (PARTITION BY Channel_Username, ID ORDER BY Date DESC) AS row_num
    FROM {{ ref('telegram_data, telegram_medical_data.csv') }}  
)

SELECT
    Channel_Username,
    ID,
    Message,
    Date,
    Media_Path
FROM distinct_messages
WHERE row_num = 1;
