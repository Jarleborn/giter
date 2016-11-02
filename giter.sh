#!/bin/bash -e
commit_message="$1"
branch="$2"
git add . -A
git commit -m "$commit_message"
if [[ -z "$branch" ]]
then
  git push origin master
else
  git push origin master:$branch
fi

day=$(date +%u)

say "your code is pushed now master, have a nice $day"
echo basename `git rev-parse --show-toplevel`
