#!/bin/bash

# Simple Interest Calculator Script

# Function to check if input is numeric.
is_number() { [[ "$1" =~ ^[0-9]+$ ]] }

# Prompt the user for input
echo "Enter Principal Amount:"
read principal
if ! is_number "$principal"; then
    echo "Error: Principal must be numeric." >&2
    exit 1
    fi

echo "Enter Rate of Interest:"
read rate
if ! is_number "$rate"; then
    echo "Error: Rate must be numeric." >&2
    exit 1
    fi

echo "Enter Time (in years):"
read time
if ! is_number "$time"; then
    echo "Error: Time must be numeric." >&2
    exit 1
    fi

# Calculate Simple Interest
si=$(( (principal * rate * time) / 100 ))

# Display result
echo "Simple Interest = $si"
