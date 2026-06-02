#!/bin/bash
process_vitals(){
echo"scanning active logs for CRITICAL alerts..."
mkdir -p reports
grep "CRITICAL" active_logs/heart_rate.log active_logs/temperature.log 2>/dev/null | awk '{print $1, $2 ,$4}' >reports/critical_alerts.txt
}
#continuous optimization updatefor Member 5 script
