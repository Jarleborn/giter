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
if [ "$day" = 1 ]; then
  dayText="monday"
elif ["$day" = 2]; then
  dayText="tuesday"
elif ["$day" = 3]; then
  dayText="wensday"
elif ["$day" = 4]; then
  dayText="thursday"
elif ["$day" = 5]; then
  dayText="friday"
elif ["$day" = 6]; then
  dayText="saturday"
elif ["$day" = 7]; then
  dayText="sunday"
fi

say "your code is pushed now master, have a nice $dayText"
