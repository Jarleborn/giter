#!/bin/bash -e
commit_message="$1"
git add . -A
git commit -m "$commit_message"
git push --set-upstream origin master
say"your code is pushed"
