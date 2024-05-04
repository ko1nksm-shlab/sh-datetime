#!/bin/sh

set -eu

. ./datetime.sh

if type gdate >/dev/null 2>&1; then
  date() { gdate "$@"; }
fi

start=-$((365 * 1971 + 135)) # 0000-01-01
end=$((365 * 8035 + 121))   # 9999-12-31

seq -f '1970-01-01 + %.0f days' "$start" "$end" | {
  date -u -f - +"%Y-%m-%dT00:00:00 %s"
} | {
  y=''
  while IFS=" " read -r ymd s; do
    if [ "$y" != "${ymd%%-*}" ]; then
      y=${ymd%%-*}
      echo "$ymd $s"
    fi
    datetime2unixtime unixtime "$ymd"
    unixtime2datetime datetime "$unixtime"
    [ "$ymd" = "$datetime" ] && [ "$s" = "$unixtime" ]
  done
}
