#!/bin/bash

USER=$(git config user.email)
TOKEN=$(security find-generic-password -a github_token -w)

curl -s -u $USER:$TOKEN  https://api.github.com/notifications \
  | jq -r '.[] | select(.unread) | [.subject.type, .reason, .subject.title] | @sh' \
  | xargs -n 3 sh -c \
  'terminal-notifier -title "GitHub Notification" -subtitle "$0 $1" -message "$2" -open "https://github.com/notifications"'
