# 🚲 Cycling Bike-Share Analysis

This project analyzes historical trip data from the **Cyclistic** bike-share program in Chicago to uncover user behavior patterns and offer data-driven business recommendations.

## 📁 Project Structure

| File                           | Description                                                 |
|--------------------------------|-------------------------------------------------------------|
| `sql/01_data_cleaning.sql`     | Removes rows with NULLs in key fields.                     |
| `sql/02_duplicate_removal.sql` | Identifies and removes duplicate ride IDs.                 |
| `sql/03_final_cleaning.sql`    | Filters invalid ride durations.                            |
| `sql/04_summary_statistics.sql`| Calculates key usage and duration metrics.                 |
| `sql/05_visualization_queries.sql` | Prepares data for Tableau dashboards.                |
| `insights_and_recommendations.md` | Summary of findings and business suggestions.         |

## 📊 Tableau Dashboard  
[View Dashboard](https://public.tableau.com/app/profile/charles.kilgore/viz/CyclingDataAnalysisCapstone2024-2025-CharlesKilgore/CyclingDataAnalysisCapstoneRiderBehaviorBusinessInsights)

## 🛠 Tools Used
- Google BigQuery (SQL)
- Tableau Public
- Excel
- GitHub

## ✅ Summary of Insights
- Members account for most rides (~3.3M vs ~2M casual).
- Casual riders ride longer and favor weekends.
- Members ride more evenly across the week.
- Casual riders prefer electric bikes; members prefer classic.

## 💡 Business Recommendations
1. Launch weekend membership promotions for casual users.
2. Deploy more electric bikes in tourist zones.
3. Offer loyalty perks to members for weekday riding.

## 🧑‍💻 Author
Charles Kilgore
