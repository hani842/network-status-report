#!/bin/bash

#Network Status Report
#This script collects basic network information
mkdir -p "$HOME/network-project/reports"
REPORT_FILE="$HOME/network-project/reports/report-$(date +%Y%m%d-%H%M%S).txt"
exec > >(tee "$REPORT_FILE") 2>&1
echo "Network Status Report"
echo "Report Data:$(date)"
echo ""
echo "===Network Interface==="
ip -br link
echo ""
echo "===Ip Addresses==="
ip -br address
echo ""
echo "===Ipv4 Routes==="
ip -4 route
echo ""
echo "=== Ipv6 Routes==="
ip -6 route
echo ""
echo "=== Gateway Connectivity Test==="
ping -c 3 -w 2 10.0.2.2
echo ""
echo "===Internet Connectivity Test==="
ping -4 -c 3 -w 2 1.1.1.1
echo ""
echo "===DNS Resolution Test==="
TEST_NAME="${TEST_NAME:-example.com}"
getent ahostsv4 "$TEST_NAME"
echo ""
echo "===listening TCP Port==="
ss -lnt

echo ""
echo "===UDP Sockets==="
ss -lun

echo ""
echo "===HTTPS Connectivity Test==="
TEST_URL="${TEST_URL:-https://example.com}"

curl -l --connect-timeout 3 --max-time 10 "https://$TEST_URL"

