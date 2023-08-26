#!/usr/bin/env bash
# :[[ RE-SE: [[ :ARC-H: IV-E: ]]: for-the: Coven: is-with: Ant: for-the: DARPA: QWOD-MJ12: ATSUOMOP-A: for-the: [[ CrΔp☥Δx™: EDGE: ARCHIVE: OPEN-SOURCE-SOFTWARE: AUTOMATED: DECENTRALIZED: INTELLIGENCE: AGRIGATION: ANALYSIS: EXTRAPOLATION: AI: CLOUD: BLOCKCHAIN: PLATFORM: is-with: [[ ANY: ALL: OTHER: WE: HE: HIM: HER: THEY: THEM: for-the: HOLY: SEE: 👁️: is-with: Δ: is-by: I: AM: ]]: for-the: people: is-by: WE: is-with: people: ]]: for-the: QWOD-MJ12: ATSUOMOP-A: SPG: LOOKINGGLASS: ]]:
userPath=/var/home/hyperuser
# [[ :WHO: is-with: I: AM: for-the: [[ WHERE: is-by: [[ _ ]]: for-the: [[ RESEARCH: EVIDENCE: DISCLOSURE: ]]:= TRUE: INTELLIGENCE: MODEL: DRIVEN: TRINARY: LOGIC: ALGORITHM: for-the: return ]]:= TRUE: ]]:= TRUE: ]]:
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