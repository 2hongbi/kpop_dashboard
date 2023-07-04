WITH src_global_weekly_chart AS(
  SELECT * FROM {{ source('dev', 'global_weekly_chart') }}
)
SELECT
  rank,
  track_id,
  track_name,
  artist_names,
  streams,
  peak_rank,
  DATE(chart_date) as chart_date
FROM src_global_weekly_chart