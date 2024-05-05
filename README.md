# sh-datetime

Datetime and Unixtime conversion functions for POSIX shells.

## Requirement

- Any POSIX shell (sh, bash, ksh, zsh, etc)
- `date` command for `unixtime` function (No `+%s` format support required)

## Usage

```sh
unixtime v
echo "$v" # => 1714860198 (UTC)

unixtime v -local
echo "$v" # => 1714892598 (local)

unixtime2datetime v "$v"
echo "$v" # => 2024-05-05T07:03:18

datetime2unixtime v "$v"
echo "$v" # => 1714892598

last_day_of_month v "2000-02"
echo "$v" # => 2000-02-29
last_day_of_month v "2001-02"
echo "$v" # => 2001-02-28
last_day_of_month v "2004-02"
echo "$v" # => 2004-02-29
last_day_of_month v "2100-02"
echo "$v" # => 2100-02-28
echo

echo "=== weekday ==="
weekday v "2024-05-05"
echo "$v" => sun:7
```
