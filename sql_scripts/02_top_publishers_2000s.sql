-- Query 1: Top 10 Publishers by Revenue in the 2000s
SELECT
    publisher,
    SUM(global_sales) as total_revenue
FROM
    game_sales
WHERE
    year_of_release BETWEEN 2000 AND 2009
    AND publisher != 'Unknown'
GROUP BY
    publisher
ORDER BY
    total_revenue DESC
LIMIT 10;