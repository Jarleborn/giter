#!/bin/bash -e
commit_message="$1"
branch="$2"
git add . -A
git commit -m "$commit_message"
if [ $branch == null ]
then
    git push origin master
fi

if [ $branch != null ]
then
git push origin master:$branch
fi

if ! fatal
then
    say "Error you dumb count"
    echo >&2 message
    if [ $branch == null ]
    then
        git push origin master
    fi

    if [ $branch != null ]
    then
    git push origin master:$branch
    fi
fi

say "your code is pushed now master, have a nice day"
echo basename `git rev-parse --show-toplevel`
