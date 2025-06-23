-- 04_summary_statistics.sql
-- Summary statistics and aggregates from cleaned data

-- A. Total Rides by Rider Type
SELECT
  member_casual,
  COUNT(*) AS total_rides
FROM `cyclistic-analysis-461901.bike_rides.cleaned_tripdata_v2`
GROUP BY member_casual;

-- B. Ride Duration Summary Stats
SELECT
  member_casual,
  AVG(ride_duration) AS average_ride_duration,
  APPROX_QUANTILES(ride_duration, 2)[ORDINAL(2)] AS median_ride_duration,
  MAX(ride_duration) AS max_ride_duration,
  MIN(ride_duration) AS min_ride_duration
FROM (
  SELECT
    member_casual,
    TIMESTAMP_DIFF(ended_at, started_at, MINUTE) AS ride_duration
  FROM `cyclistic-analysis-461901.bike_rides.cleaned_tripdata_v2`
)
GROUP BY member_casual;
