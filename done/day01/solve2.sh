#!/usr/bin//env bash

calories() {
    declare -i sum=0
    while read line; do
        if [[ "$line" = "asdf" ]]; then
            echo $sum && sum=0
        else
            sum+=$line
        fi
    done < <(sed -e 's/^$/asdf/g' inputs) 
}

calories | sort -n
