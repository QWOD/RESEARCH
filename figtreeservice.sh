#!/usr/bin/env bash
userPath=/var/home/hyperuser

if [[ $* == "stop" ]]; then
  exit 0
fi

if [[ "start" == "$*" ]]; then
  echo $(whoami)
  if cd ${userPath}; then
    echo $(pwd)
  fi
  while [[ $? -eq 0 ]]; do
    if cd ~/QWOD/RESEARCH/; then
      ~/bin/newfig -p
    fi
    if cd ~/QWOD/HYPERMEDIUS/; then
      ~/bin/newfig -p
    fi
    sleep 222
  done
fi