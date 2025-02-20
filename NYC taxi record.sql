USE TAXI_TRIP;

SELECT * FROM taxi_data;

# What is the total number of trips recorded?
SELECT COUNT(*) AS total_trips FROM taxi_data;

# What is the total revenue generated from all trips?
SELECT SUM(total_amount) AS total_revenue FROM taxi_data;

# What is the average fare amount per trip?
SELECT AVG(fare_amount) AS avg_fare FROM taxi_data;

# What are the peak pickup hours with the highest trip counts?
SELECT HOUR(pickup_time) AS pickup_hour, COUNT(*) AS trip_count
FROM taxi_data
GROUP BY pickup_hour
ORDER BY trip_count DESC
LIMIT 5;

# Which locations have the highest number of pickups?
SELECT PULocationID, COUNT(*) AS trip_count
FROM taxi_data
GROUP BY PULocationID
ORDER BY trip_count DESC
LIMIT 5;

# Which locations have the highest number of drop-offs?
SELECT DOLocationID, COUNT(*) AS trip_count
FROM taxi_data
GROUP BY DOLocationID
ORDER BY trip_count DESC
LIMIT 5;

# When is the peak demand time based on trip count?
SELECT HOUR(pickup_time) AS pickup_hour, COUNT(*) AS trip_count
FROM taxi_data
GROUP BY pickup_time
ORDER BY trip_count DESC
LIMIT 5;

# What is the most common day for taxi trips?
SELECT DAYNAME(pickup_date) AS day_of_week, COUNT(*) AS trip_count
FROM taxi_data
GROUP BY day_of_week
ORDER BY trip_count DESC;

# In which month do most trips occur?
SELECT MONTHNAME(pickup_date) AS trip_month, COUNT(*) AS trip_count
FROM taxi_data
GROUP BY trip_month
ORDER BY trip_count DESC;

# Which pickup locations experience the highest demand during peak hours?
SELECT PULocationID, HOUR(pickup_time) AS pickup_hour, COUNT(*) AS trip_count
FROM taxi_data
GROUP BY PULocationID, pickup_hour
ORDER BY trip_count DESC
LIMIT 5;

# What is the total fare revenue generated from all trips?
SELECT SUM(fare_amount) AS total_fare_revenue FROM taxi_data;

# How do tip amounts trend over time?
SELECT DATE(pickup_date) AS trip_date, SUM(tip_amount) AS total_tips
FROM taxi_data
GROUP BY trip_date
ORDER BY trip_date ASC;

# Which pickup locations generate the highest revenue?
SELECT PULocationID, SUM(total_amount) AS total_revenue
FROM taxi_data
GROUP BY PULocationID
ORDER BY total_revenue DESC
LIMIT 5;

# What is the breakdown of tolls, congestion surcharges, and airport fees?
SELECT SUM(tolls_amount) AS total_tolls, 
       SUM(congestion_surcharge) AS total_congestion, 
       SUM(Airport_fee) AS total_airport_fees
FROM taxi_data;

# What is the distribution of payment methods used by passengers?
SELECT payment_type, COUNT(*) AS count_transactions
FROM taxi_data
GROUP BY payment_type
ORDER BY count_transactions DESC;
