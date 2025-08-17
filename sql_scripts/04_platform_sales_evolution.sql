-- Query 3: Yearly Sales Evolution for Top 3 Platforms
WITH TopPlatforms AS (
    SELECT
        platform
    FROM
        game_sales
    GROUP BY
        platform
    ORDER BY
        SUM(global_sales) DESC
    LIMIT 3
)
SELECT
    gs.platform,
    gs.year_of_release,
    SUM(gs.global_sales) as total_yearly_sales
FROM
    game_sales gs
JOIN
    TopPlatforms tp ON gs.platform = tp.platform
WHERE
    gs.year_of_release IS NOT NULL
GROUP BY
    gs.platform,
    gs.year_of_release
ORDER BY
    gs.platform,
    gs.year_of_release;