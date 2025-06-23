/*
 * File: 05_visualization_queries.sql
 * Author: Charles Kilgore
 * Description: Prepares analysis queries for Tableau visualizations, including ride frequency, duration, and type.
 * Input Table: cleaned_tripdata_v2
 * Output: Aggregated datasets for visual reporting
 * Last Updated: 2025-06-22
 */

-- 05_visualization_queries.sql
-- Data preparation queries for Tableau visualizations

-- A. Rides per Day of Week by Member Type
SELECT
  FORMAT_DATE('%A', DATE(started_at)) AS day_of_week,
  member_casual,
  COUNT(*) AS ride_count
FROM `cyclistic-analysis-461901.bike_rides.cleaned_tripdata_v2`
GROUP BY day_of_week, member_casual;

-- B. Average Ride Duration by Day of Week and Member Type
SELECT
  FORMAT_DATE('%A', DATE(started_at)) AS day_of_week,
  member_casual,
  AVG(TIMESTAMP_DIFF(ended_at, started_at, MINUTE)) AS average_ride_duration
FROM `cyclistic-analysis-461901.bike_rides.cleaned_tripdata_v2`
GROUP BY day_of_week, member_casual;

-- C. Rideable Type Preference by Member Type
SELECT
  rideable_type,
  member_casual,
  COUNT(*) AS ride_count
FROM `cyclistic-analysis-461901.bike_rides.cleaned_tripdata_v2`
GROUP BY rideable_type, member_casual;

-- D. Ride Start Time Trends (Hour of Day)
SELECT
  EXTRACT(HOUR FROM started_at) AS ride_hour,
  member_casual,
  COUNT(*) AS ride_count
FROM `cyclistic-analysis-461901.bike_rides.cleaned_tripdata_v2`
GROUP BY ride_hour, member_casual;

-- E. Average Ride Duration by Member Type (for bar chart)
SELECT
  member_casual,
  AVG(TIMESTAMP_DIFF(ended_at, started_at, MINUTE)) AS average_ride_duration
FROM `cyclistic-analysis-461901.bike_rides.cleaned_tripdata_v2`
GROUP BY member_casual;

-- F. Sample Data with Day of Week Column (for CSV Export)
SELECT
  *,
  FORMAT_DATE('%A', DATE(started_at)) AS Days_of_week
FROM `cyclistic-analysis-461901.bike_rides.cleaned_tripdata_v2`
WHERE MOD(FARM_FINGERPRINT(ride_id), 10) = 0;
