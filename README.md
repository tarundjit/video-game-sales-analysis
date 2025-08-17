# End-to-End Analysis of Global Video Game Sales

## Project Goal
The goal of this project is to perform a full end-to-end analysis of a raw dataset of historical video game sales. The workflow includes data cleaning and preparation, database creation and population, SQL analysis, and final visualization in a BI tool.

***

## Phase 1: Data Cleaning and Preparation

The initial raw dataset was sourced from Kaggle and contained several issues that needed to be addressed before analysis.

### Cleaning Steps Performed:
* **Handled Invalid Data:** Removed all rows where the `Year_of_Release` was listed as "N/A".
* **Imputed Missing Values:** Replaced "N/A" `Publisher` fields with the value 'Unknown' to retain the sales data for those games.
* **Transformed Data Types:** Converted the regional and global sales columns (e.g., `NA_Sales`) from text format (e.g., "41.36M") into a numeric format representing the actual sales figures (e.g., 41,360,000).
* **Handled Other Missing Data:** Intentionally left blank values in contextual columns like `critic_score` to be loaded as `NULL` into the database. This preserves the sales data while correctly representing that a critic score is missing.
* **Standardized Naming:** Renamed all columns to a consistent `snake_case` format for compatibility with PostgreSQL.

The final, cleaned dataset is stored in `cleaned_video_game_sales.csv`.