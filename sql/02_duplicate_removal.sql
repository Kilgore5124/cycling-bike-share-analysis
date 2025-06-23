-- 02_duplicate_removal.sql
-- Step 2: Detect and remove duplicate ride_id records

-- A. Check for duplicates in ride_id
SELECT
  ride_id,
  COUNT(*) AS count
FROM `cyclistic-analysis-461901.bike_rides.cleaned_Tripdata`
GROUP BY ride_id
HAVING count > 1
ORDER BY count DESC;

-- B. View all full rows for duplicate ride_ids
SELECT *
FROM `cyclistic-analysis-461901.bike_rides.cleaned_Tripdata` AS t0
WHERE ride_id IN (
  SELECT ride_id
  FROM `cyclistic-analysis-461901.bike_rides.cleaned_Tripdata`
  GROUP BY ride_id
  HAVING COUNT(*) > 1
);

-- C. Deduplicate by keeping the first instance based on started_at
CREATE OR REPLACE TABLE `cyclistic-analysis-461901.bike_rides.cleaned_Tripdata` AS
SELECT *
FROM (
  SELECT *,
         ROW_NUMBER() OVER (PARTITION BY ride_id ORDER BY started_at) AS rn
  FROM `cyclistic-analysis-461901.bike_rides.cleaned_Tripdata`
)
WHERE rn = 1;
