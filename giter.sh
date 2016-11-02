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
if [ "${day}" -eq 1 ]
then
dayText="monday"
else if ["${day}" -eq 2]; then
dayText="tuesday"
else if [["${day}" -eq 3]; then
  dayText="wensday"
else if ["${day}" -eq 4]; then
  dayText="thursday"
else if ["${day}" -eq 5]; then
  dayText="friday"
else if ["${day}" -eq 6]; then
  dayText="saturday"
else if ["${day}" -eq 7]; then
  dayText="sunday"
fi

say "your code is pushed now master, have a nice $dayText"
echo basename `git rev-parse --show-toplevel`
