SELECT
  hits.page.pagePath AS landing_page,
  COUNT(DISTINCT fullVisitorId) AS users,
  COUNT(DISTINCT CASE
    WHEN totals.transactions IS NOT NULL
    THEN fullVisitorId
  END) AS buyers,
  ROUND(
    COUNT(DISTINCT CASE
      WHEN totals.transactions IS NOT NULL
      THEN fullVisitorId
    END)
    / COUNT(DISTINCT fullVisitorId) * 100,
    2
  ) AS cv_rate
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`,
UNNEST(hits) AS hits
WHERE hits.isEntrance = TRUE
GROUP BY landing_page
HAVING users >= 100
ORDER BY users DESC