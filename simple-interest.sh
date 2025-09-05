#!/bin/bash

# Simple Interest Calculator Script

# Prompt the user for input
echo "Enter Principal Amount:"
read principal

echo "Enter Rate of Interest:"
read rate

echo "Enter Time (in years):"
read time

# Calculate Simple Interest
si=$(( (principal * rate * time) / 100 ))

# Display result
echo "Simple Interest = $si"
