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

# say "Oow supreem master $USERNAME your code is now pushed from $HOSTNAME       to your repository on  github,  have a nice $day"

espeak -v sv "Okej $USERNAME nu är din kod pushad från $HOSTNAME till dit repo på github ha en trevlig $day"
