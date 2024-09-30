#!/bin/bash
if [[ $3 != "" ]]
then
    git add --all
    git commit -m "$1"
    git tag -a "$2" -m "$3"
    git push
else
    echo "Not enough arguments"
    echo "Usage:"
    echo "actpush <commit message> <tag version> <Tag Description>"
fi