# sh-datetime

Datetime and Unixtime conversion functions for POSIX shells.

## Requirement

- Any POSIX shell (sh, bash, ksh, zsh, etc)
- `date` command for `unixtime` function (No `+%s` format support required)

## Usage

```sh
unixtime v -utc
echo "$v" # => 1714831692

unixtime2datetime v "$v"
echo "$v" # => 2024-05-04T14:08:12

datetime2unixtime v "$v"
echo "$v" # => 1714831692
```
