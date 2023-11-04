#!/bin/bash

file_name="$1"

total_pokemon=$(wc -l < "$file_name")

avg_hp=$(awk '{total += $6} END {print total/NR}' "$file_name")
avg_attack=$(awk '{total += $7} END {print total/NR}' "$file_name")

echo "===== SUMMARY OF DATA FILE ====="
echo "   File name: $file_name"
echo "   Total Pokemon: $total_pokemon"
echo "   Avg. HP: $avg_hp"
echo "   Avg. Attack: $avg_attack"
echo "===== END SUMMARY ====="

