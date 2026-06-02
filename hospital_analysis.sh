#!/bin/bash
process_vitals(){
echo "scanning active logsfor CRITICAL alerts..."
grep -h "CRITICAL" active_logs/heart_rate.log active_logs/temperature.log 2>/dev/null | awk '{print $1, $2, $4}' > reports/critical_alerts.txt
echo "Analysis complete. Critical alerts saved to reports/critical_alerts.txt"
}
