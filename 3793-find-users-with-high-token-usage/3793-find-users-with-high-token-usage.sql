WITH user_stats AS (
    SELECT
        user_id,
        COUNT(*) AS prompt_count,
        AVG(tokens) AS avg_tokens
    FROM prompts
    GROUP BY user_id
    HAVING COUNT(*) >= 3
)

SELECT
    us.user_id,
    us.prompt_count,
    ROUND(us.avg_tokens, 2) AS avg_tokens
FROM user_stats us
WHERE EXISTS (
    SELECT 1
    FROM prompts p
    WHERE p.user_id = us.user_id
      AND p.tokens > us.avg_tokens
)
ORDER BY avg_tokens DESC, user_id ASC;