#!/bin/bash -e
commit_message="$1"
git add . -A
git commit -m "$commit_message"
git push origin master
say "your code is pushed now master, have a nice day"
echo basename `git rev-parse --show-toplevel`
