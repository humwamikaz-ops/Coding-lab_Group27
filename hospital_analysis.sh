#!/bin/bash

water_audit() {
    echo "=== Water Usage Audit ==="

    awk -F'|' '
    $2 ~ /ICU_WATER_RESERVE/ {
        gsub(/^[ \t]+|[ \t]+$/, "", $3)
        total += $3
        count++
    }

    END {
        if (count > 0) {
            avg = total / count

            printf "\nWater Usage Summary\n"
            printf "-------------------\n"
            printf "Device: ICU_WATER_RESERVE\n"
            printf "Records Analyzed: %d\n", count
            printf "Average Water Usage: %.2f Liters/min\n", avg
        } else {
            printf "No ICU_WATER_RESERVE records found.\n"
        }
    }' active_logs/water_usage_log.log
}

