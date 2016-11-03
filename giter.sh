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
if [ "$day" == 1 ] then
  dayText="monday"
elif ["${day}" -eq 2] then
  dayText="tuesday"
elif [["${day}" -eq 3] then
  dayText="wensday"
elif ["${day}" -eq 4] then
  dayText="thursday"
elif ["${day}" -eq 5] then
  dayText="friday"
elif ["${day}" -eq 6] then
  dayText="saturday"
elif ["${day}" -eq 7] then
  dayText="sunday"
fi

say "your code is pushed now master, have a nice $dayText"
