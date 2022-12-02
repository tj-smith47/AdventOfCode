#!/usr/bin/env zsh

declare -i run=0
declare -i sum=0

sed -e 's/^$/asdf/g' inputs > input

while read line; do
    case $line in
        "asdf" | asdf)
            echo $sum >> sums && sum=0
            ;;
        *)
            sum+=$line
            ;;
    esac
done < input

grep -Eo '[0-9]+' sums | sort -n
