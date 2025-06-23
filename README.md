# cycling-bike-share-analysis

This project analyzes historical trip data from the Cyclistic bike-share program to provide business insights and recommendations for improving rider engagement and membership growth.

## Dataset
Stored in Google BigQuery under the dataset: `cyclistic-analysis-461901.bike_rides`

## Project Structure

| File                            | Description |
|---------------------------------|-------------|
| `01_data_cleaning.sql`          | Removes rows with NULLs in key fields to ensure clean initial data. |
| `02_duplicate_removal.sql`      | Identifies and removes duplicate ride IDs. |
| `03_final_cleaning.sql`         | Filters out invalid ride durations and finalizes the cleaned dataset. |
| `04_summary_statistics.sql`     | Generates ride count and duration statistics by member type. |
| `05_visualization_queries.sql`  | Prepares queries used for Tableau dashboards. |
| `insights_and_recommendations.md` | Summarizes project findings and data-driven recommendations. |

## Tools Used
- Google BigQuery (SQL)
- Tableau Public
- Excel (Exploratory)
- Markdown for documentation

## Summary
The analysis reveals distinct behavioral patterns between casual and member riders and provides actionable strategies to convert casual users into loyal members.

## Author
Charles Kilgore
