SELECT
  hits.page.pagePath,
  COUNT(*) AS pageviews,
  COUNTIF(hits.isExit = TRUE) AS exits,
  ROUND(
    COUNTIF(hits.isExit = TRUE)
    / COUNT(*) * 100,
    2
  ) AS exit_rate
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`,
UNNEST(hits) AS hits
WHERE hits.type = 'PAGE'
GROUP BY hits.page.pagePath
HAVING pageviews >= 100
ORDER BY exit_rate DESC