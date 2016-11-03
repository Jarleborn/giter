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


day=$(date +%A)
# if [ $day == "1" ]; then
#   dayText="monday"
# elif [$day == "2"]; then
#   dayText="tuesday"
# elif [$day == "3"]; then
#   dayText="wensday"
# elif [$day == "4"]; then
#   dayText="thursday"
# elif [$day == "5"]; then
#   dayText="friday"
# elif [$day == "6"]; then
#   dayText="saturday"
# elif [$day == "7"]; then
#   dayText="sunday"
# else
#   dayText="day"
# fi
echo $day
# say "Oow supreem master $USERNAME your code is now pushed from $HOSTNAME       to your repository on  github,  have a nice $day"

espeak -v sv "Okej $USERNAME nu är din kod pushad från $HOSTNAME till dit rep på github ha en trevlig $day"
