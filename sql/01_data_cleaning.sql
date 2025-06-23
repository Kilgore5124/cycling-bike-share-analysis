/*
 * File: 01_data_cleaning.sql
 * Author: Charles Kilgore
 * Description: Removes rows with NULL values in critical fields from the raw trip data.
 * Source Table: combined_tripdata_copy
 * Output Table: cleaned_Tripdata
 * Last Updated: 2025-06-22
 */

-- 01_data_cleaning.sql
-- Step 1: Remove rows with NULL values in critical fields from the raw trip data.
-- Source Table: combined_tripdata_copy
-- Target Table: cleaned_Tripdata

CREATE OR REPLACE TABLE `cyclistic-analysis-461901.bike_rides.cleaned_Tripdata` AS
SELECT *
FROM `cyclistic-analysis-461901.bike_rides.combined_tripdata_copy`
WHERE
  NOT ride_id IS NULL
  AND NOT started_at IS NULL
  AND NOT ended_at IS NULL
  AND NOT rideable_type IS NULL
  AND NOT member_casual IS NULL;
