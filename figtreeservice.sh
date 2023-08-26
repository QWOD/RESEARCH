#!/usr/bin/env bash
userPath=/var/home/hyperuser

# ssh secure.us.hyperspire.net -t '/usr/bin/env bash -c "/home/hyperuser/hyperstor/bin/figtreeservice start &"'
[[ $* == "start" || $* == "stop" ]] || echo '[[ "USAGE: requires: either: [[ start: || stop: ]]" ]]:' || exit 0

if [[ $* == "stop" ]]; then
  exit 0
fi

if [[ "start" == "$*" ]]; then
  echo $(whoami)
  if cd ${userPath}; then
    echo $(pwd)
  fi
  while [[ $? -eq 0 ]]; do
    if cd ${userPath}/QWOD/RESEARCH/; then
      ${userPath}/bin/newfig -p
    fi
    if cd ${userPath}/QWOD/HYPERMEDIUS/; then
      ${userPath}/bin/newfig -p
    fi
    if cd ${userPath}/QWOD/DISCLOSURE/; then
      ${userPath}/bin/newfig -p
    fi
    sleep 222
  done
fi