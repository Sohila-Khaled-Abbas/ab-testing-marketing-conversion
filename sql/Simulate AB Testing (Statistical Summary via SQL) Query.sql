SELECT
    test_group,
    COUNT(*) AS users,
    SUM(CASE WHEN converted THEN 1 ELSE 0 END) AS conversions,
    ROUND(AVG(CASE WHEN converted THEN 1 ELSE 0 END) * 100, 2) AS conversion_rate
FROM
    marketing_data
GROUP BY
    test_group;
