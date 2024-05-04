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
