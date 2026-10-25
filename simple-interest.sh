
#!/bin/bash

# Simple Interest Calculator

echo "Simple Interest Calculator"
echo "--------------------------"

read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (%): " rate
read -p "Enter the time period (in years): " time

# Calculate simple interest using awk for decimal arithmetic
simple_interest=$(awk "BEGIN {printf \"%.2f\", ($principal * $rate * $time) / 100}")
total_amount=$(awk "BEGIN {printf \"%.2f\", $principal + $simple_interest}")

echo "--------------------------"
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $simple_interest"
echo "Total Amount: $total_amount"
