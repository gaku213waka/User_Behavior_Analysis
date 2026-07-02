SELECT
  device. browser as browser,
  COUNT(DISTINCT fullVisitorId) AS users,
  COUNT(DISTINCT CASE
    WHEN totals.transactions IS NOT NULL THEN fullVisitorId
  END) AS buyers,
  ROUND(
    COUNT(DISTINCT CASE
      WHEN totals.transactions IS NOT NULL THEN fullVisitorId
    END)
    / COUNT(DISTINCT fullVisitorId) * 100,
    2
  ) AS cv_rate
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
GROUP BY
  browser
ORDER BY users DESC;
