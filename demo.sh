#!/bin/sh

. ./datetime.sh

echo "=== unixtime (UTC) ==="
unixtime v
echo "$v"
echo

echo "=== unixtime (local) ==="
unixtime v -local
echo "$v"
echo

echo "=== unixtime2datetime ==="
unixtime2datetime v "$v"
echo "$v"
echo

echo "=== datetime2unixtime ==="
datetime2unixtime v "$v"
echo "$v"
echo

echo "=== last_day_of_month ==="
last_day_of_month v "2000-02"
echo "$v"
last_day_of_month v "2001-02"
echo "$v"
last_day_of_month v "2004-02"
echo "$v"
last_day_of_month v "2100-02"
echo "$v"
echo

echo "=== weekday ==="
weekday v "2024-05-05"
echo "$v"
