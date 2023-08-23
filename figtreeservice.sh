#!/usr/bin/env bash

if [[ $* == "stop" ]]; then
  exit 0
fi

if [[ "start" == "$*" ]]; then
  if [[ $USER != "hyperuser" ]]; then
    su hyperuser
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