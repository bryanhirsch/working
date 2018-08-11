SELECT CONCAT_WS (
  "{",
  s.unique_pageviews,
  d.node_id,
  d.short_description,
  d.title,
  d.path,
  s.content_quality_score,
  s.findability_score,
  s.outcome_score,
  s.overall_score,
  s.user_satisfaction_score
)
FROM
  services_superset s
LEFT JOIN
  services_drupal d
ON
  d.node_id = s.node_id
ORDER BY s.unique_pageviews DESC;