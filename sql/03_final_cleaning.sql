-- 03_final_cleaning.sql
-- Step 3: Final data cleaning to remove invalid ride durations

-- Create final cleaned dataset by filtering out:
-- 1. Any remaining NULL values (safety check)
-- 2. Rides where ended_at is before or equal to started_at

CREATE OR REPLACE TABLE `cyclistic-analysis-461901.bike_rides.cleaned_tripdata_v2` AS
SELECT *
FROM `cyclistic-analysis-461901.bike_rides.cleaned_Tripdata`
WHERE
  NOT ride_id IS NULL
  AND NOT started_at IS NULL
  AND NOT ended_at IS NULL
  AND NOT rideable_type IS NULL
  AND NOT member_casual IS NULL
  AND TIMESTAMP_DIFF(ended_at, started_at, MINUTE) > 0;
