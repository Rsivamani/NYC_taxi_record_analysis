# Uber-Ride-Analytics
## Project Overview

This project aims to analyze NYC Yellow Taxi Trip data by building a data warehouse model with fact and dimension tables. The dataset includes detailed trip records capturing pick-up and drop-off dates/times, locations, trip distances, fares, rate types, payment types, and passenger counts. The final goal is to extract, transform, and load (ETL) the data into structured tables for further analysis.

## Project Structure

The project consists of the following main components:

1. **Data Extraction:** Reading and loading the CSV file into a Pandas DataFrame.
2. **Data Transformation:** Cleaning and transforming the data using Pandas to ensure data quality.
3. **Data Loading:** Creating a local SQLite database, defining the schema, and inserting data into fact and dimension tables.

## Data Model

### Dimension Table:
| Column Name        | Data Type |
|--------------------|-----------|
| VendorID           | INTEGER   |
| VendorName         | TEXT      |
| datetime_id        | INTEGER   |
| full_datetime      | TEXT      |
| date               | TEXT      |
| hour               | INTEGER   |
| day_of_week        | INTEGER   |
| location_id        | INTEGER   |
| longitude          | REAL      |
| latitude           | REAL      |
| ratecode_id        | INTEGER   |
| rate_description   | TEXT      |
| payment_type       | INTEGER   |
| payment_description| TEXT      |

### Fact Table:
| Column Name            | Data Type |
|------------------------|-----------|
| trip_id                | INTEGER   |
| VendorID               | INTEGER   |
| pickup_datetime        | TEXT      |
| dropoff_datetime       | TEXT      |
| passenger_count        | INTEGER   |
| trip_distance          | REAL      |
| ratecode_id            | INTEGER   |
| payment_type           | INTEGER   |
| fare_amount            | REAL      |
| extra                  | REAL      |
| mta_tax                | REAL      |
| tip_amount             | REAL      |
| tolls_amount           | REAL      |
| total_amount           | REAL      |
| pickup_location_id     | INTEGER   |
| dropoff_location_id    | INTEGER   |
