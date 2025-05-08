SELECT
    test_group,
    COUNT(*) FILTER (WHERE converted) AS converted,
    COUNT(*) FILTER (WHERE NOT converted) AS not_converted
FROM
    marketing_data
GROUP BY
    test_group;
