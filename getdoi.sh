#!/usr/bin/bash

usage() {
    echo "Usage:  getdoi [REFERENCE]"
    echo "    [REFERENCE]  Paper to search in CrossRef"
}

if [ ! $1 ]; then
    usage
    exit
fi

my_query=$(echo "$1" | jq -sRr @uri)
curl "https://api.crossref.org/works?query=$my_query" | jq '.message.items[0].DOI'
