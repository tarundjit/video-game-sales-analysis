-- Query 2: Regional Market Share for the 'Action' Genre
WITH GenreSales AS (
    SELECT
        SUM(na_sales) as na_total,
        SUM(eu_sales) as eu_total,
        SUM(jp_sales) as jp_total,
        SUM(global_sales) as global_total
    FROM game_sales
    WHERE genre = 'Action'
)
SELECT
    ROUND((na_total / global_total) * 100, 2) as na_market_share_percent,
    ROUND((eu_total / global_total) * 100, 2) as eu_market_share_percent,
    ROUND((jp_total / global_total) * 100, 2) as jp_market_share_percent
FROM GenreSales;