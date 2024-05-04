#!/bin/sh

. ./datetime.sh

echo "=== unixtime ==="
unixtime v -utc
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
