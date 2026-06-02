#!/bin/bash

timestamp=$(date +%Y%m%d_%H%M)

# Move and rename current logs
mv active_logs/heart_rate.log archived_logs/heart_rate_${timestamp}.log
mv active_logs/temperature.log archived_logs/temperature_${timestamp}.log
mv active_logs/water_usage.log archived_logs/water_usage_${timestamp}.log

# Recreate empty log files for continued data collection
touch active_logs/heart_rate.log
touch active_logs/temperature.log
touch active_logs/water_usage.log

echo "Logs archived successfully at $(date)"
