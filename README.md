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

## Phase 2: SQL Analysis & Findings 

The cleaned data was loaded into a PostgreSQL database and analyzed using SQL to answer key business questions.

### 1. Which publishers had the highest revenue in the 2000s?
* **Finding:** The analysis shows that the 2000s were dominated by legacy publishers. Nintendo was the clear leader, generating over $28 billion in revenue, followed by Electronic Arts at over $20 billion. This highlights the strong market position these companies held during this key decade.
* **Script:** [`02_top_publishers_2000s.sql`](./sql_scripts/02_top_publishers_2000s.sql)

---

### 2. What is the regional sales market share for the 'Action' genre?
* **Finding:** The 'Action' genre's sales are heavily concentrated in Western markets. North America accounts for the largest share at over 48%, followed by Europe at 29%. The Japanese market contributes a much smaller share at just over 8%.
* **Script:** [`03_action_genre_market_share.sql`](./sql_scripts/03_action_genre_market_share.sql)

---

### 3. How did the top 3 platforms' sales evolve over time?
* **Finding:** The analysis of the top 3 platforms (PlayStation 2, Xbox 360, and PlayStation 3) clearly visualizes the life cycle of a console generation. Each platform shows a rise to a peak sales year, followed by a steady decline as the next generation emerges and takes over the market.
* **Script:** [`04_platform_sales_evolution.sql`](./sql_scripts/04_platform_sales_evolution.sql)