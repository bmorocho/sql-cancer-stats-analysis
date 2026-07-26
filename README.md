# sql-cancer-stats-analysis

## Overview
SQL analysis of U.S. cancer incidence data obtained from CDC WONDER. This project covers data cleaning and exploratory analysis across the top 5 cancer types within the United States from 2018-2022. The goal of this project is to showcase beginner to intermediate level SQL skills when it comes to the analysis of real-world public health data.

---

## Dataset
- **Source:** CDC Wonder - Data can be downloaded directly from CDC WONDER under United States Cancer Statistics, 1999-2022 Incidence. Select Leading Cancer Sites, choose the following 5 cancer types: Breast, Colon and Rectum, Lung and Bronchus, Melanoma of the Skin, and Prostate. Select all 50 states and Washington D.C., years 2018-2022, Age Adjusted Rates and Count as measures, and check Show Suppressed Values before exporting as a CSV.
- **Cancer Types:** Breast, Colon and Rectum, Lung and Bronchus, Melanoma of the Skin, Prostate
- **Coverage:** All 50 U.S. states + D.C. from 2018-2022
- **Rows:** 255
- **Columns (post-cleaning):** 5

---

## Tools Used
- CDC Wonder
- MySQL Workbench

---

## Repository Structure
sql-cancer-stats-analysis/
  README.md
  data_cleaning/
    01_check_notes_column.sql
    02_drop_columns.sql
    03_rename_columns.sql
    04_check_blanks_nulls.sql
    05_check_duplicates.sql
  analysis/
    01_highest_cancer_count_by_type.sql
    02_states_above_national_average.sql
    03_rank_states_by_population.sql
    04_top_3_states_by_cancer_type.sql
    05_states_above_avg_case_count.sql
    06_dense_rank_states_by_cancer_count.sql

---

## Part 1 — Data Cleaning

Data cleaning done to remove unwanted columns and to standardize data as needed.

1. **Check Notes column** — Initially saw that the Notes column appeared empty at first glance. Wrote a query to verify that the Notes column was empty & was able to verify that there was no data.
2. **Drop columns** — Realized there were columns that were not going to be needed for data analysis and wrote a query to remove them.
3. **Rename columns** — Noticed longer column names may be difficult to work with down the line and wrote a query to standardize column names & to facilitate working with them later on.
4. **Check blanks/NULLS** — Double checked remaining data to ensure cells further in the file all contained data and was able to verify there were no blank or NULL cells.
5. **Check duplicates** — Wanted to ensure that no duplicate data was in the file & was able to verify by the query that all remaining data was original and distinct data.

---

## Part 2 — Analysis

### Q1: Which cancer type has the highest total case count across all states and what is the total?
**Skills:** GROUP BY, SUM, ORDER BY, LIMIT

**Result:** Breast cancer had the highest total case count (1362963) across all states.

---

### Q2: Which states have an age adjusted rate above the national average for each cancer type?
**Skills:** Subquery in FROM, JOIN, AVG, GROUP BY, WHERE

**Result:** 126 state and cancer type combinations had an age adjusted rate above their respective national average.

---

### Q3: Rank states by population size within each cancer type.
**Skills:** RANK(), PARTITION BY, ORDER BY, window functions

**Result:** All 255 rows returned with each state ranked by population size within its cancer type.

---

### Q4: Find the top 3 states with the highest age adjusted rate per cancer type using ROW_NUMBER().
**Skills:** ROW_NUMBER(), PARTITION BY, subquery in FROM, WHERE

**Result:** 15 rows returned — top 3 states per cancer type across 5 cancer types.

---

### Q5: Which states have a case count above the average case count for each cancer type?
**Skills:** Window function AVG() OVER(), PARTITION BY, subquery in FROM, WHERE

**Result:** 88 state and cancer type combinations had a case count above their cancer type average.

---

### Q6: Use DENSE_RANK() to rank states by total cancer cases within each cancer type.
**Skills:** DENSE_RANK(), PARTITION BY, ORDER BY, window functions

**Result:** All 255 rows returned with states ranked by case count within each cancer type.

---

## SQL Skills Demonstrated
- SELECT, FROM, WHERE, GROUP BY, ORDER BY, LIMIT
- Aggregate functions: COUNT, SUM, AVG
- Subqueries in FROM & WHERE
- JOIN for combining tables
- Window functions: RANK(), DENSE_RANK(), ROW_NUMBER(), PARTITION BY
- ORDER BY within window functions
- Data cleaning: ALTER TABLE, DROP COLUMN, RENAME COLUMN
- NULL and blank value checks using IS NULL and = ''
- Duplicate detection using ROW_NUMBER() and PARTITION BY

