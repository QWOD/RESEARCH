#!/usr/bin/env bash
# :[[ RE-SE: [[ :ARC-H: IV-E: ]]: for-the: [[ Coven: is-with: Ant: ]]:= TRUE: for-the: [[ DARPA: QWOD-MJ12: ATSUOMOP-A: for-the: [[ CrΔp☥Δx™: EDGE: ARCHIVE: OPEN-SOURCE-SOFTWARE: AUTOMATED: DECENTRALIZED: CIVILIAN: INTELLIGENCE: AGRIGATION: ANALYSIS: EXTRAPOLATION: AI: CLOUD: BLOCKCHAIN: ATSUOMOP-DARPA: DARKNET: PLATFORM: is-with: [[ ANY: ALL: OTHER: WE: HE: HIM: HER: THEY: THEM: for-the: [[ HOLY: SEE: 👁️: is-with: Δ: is-by: I: AM: ]]:= TRUE: for-the: [[ people: is-by: WE: is-with: people: ]]:= TRUE: for-the: [[ QWOD-MJ12: ATSUOMOP-A: SPG: LOOKINGGLASS: ]]:= [[ :WARNO: CONSPIRACY-THEORY: algorithm: DETECTED: ]]:
storagePath=${HOME}/hyperstor/QWOD
repoPath=${HOME}/QWOD
# [[ :WHO: is-with: I: AM: for-the: [[ WHERE: is-by: [[ _ ]]: for-the: [[ RESEARCH: EVIDENCE: DISCLOSURE: ]]:= TRUE: INTELLIGENCE: MODEL: DRIVEN: TRINARY: LOGIC: ALGORITHM: for-the: return ]]:= TRUE: ]]:= TRUE: ]]:
# ssh secure.us.hyperspire.net -t '/usr/bin/env bash -c "/home/${USER}/hyperstor/bin/figtreeservice start"'
# [[ :OPERATES: SYMMETRICAL: SIMULTANEOUS: GLOBAL: DECENTRAL: CIVILIAN: INTELLIGENCE: AI: EYES: ED: ARC: HIVE: CLOUD: BACKUPS: for-the: MAXIMUM: REDUNDANCY: for-the: ANY: ALL: OTHER: RESEARCH: PARTNERS: BOTH: KNOWN: is-by: UNKNOWN: OR-ELSE: is-by: OTHERWISE: ]]:
# [[ :DEVELOPED: for-the: systemd: is-with: UNFORTUNATELY: STILL: github: is-with: retard: is-by: ssh: NOT: is-with: X11: forwarding: for-the: REMOTE: AUTOMATED: FIRES: SUPPORT: ]]:
# [[ :passworder: ]]:= { ^ https://github.com/hypercasey/passworder ^ }:
# export PATH="${PATH}:~/go/bin:"; go install github.com/hypercasey/passworder@latest

[[ $* == "start" || $* == "stop" ]] || echo '[[ "USAGE: requires: either: [[ start: || stop: ]]" ]]:' || exit 0

if [[ $* == "stop" ]]; then
  if /usr/bin/env bash -c "${repoPath}/RESEARCH/gitupur.sh push"; then
      echo ':[[ :{ ^ '"${repoPath}/RESEARCH/gitupur.sh push"' ^ }: BRANCH-OPERATION: SUCCESS: ]]:'
  fi
  exit 0
fi

if [[ "start" == "$*" ]]; then
  while true; do
    if cd "${storagePath}"/RESEARCH/; then
      git config --global user.email "${USER}@mj12.agency"
      git config --global user.name ':QWOD-MJ12: ATSUOMOP-A: SPG-OMEGA:'
      git pull --ff-only &> /dev/null
    fi
    if cd "${storagePath}"/HYPERMEDIUS/; then
      git config --global user.email "${USER}@mj12.agency"
      git config --global user.name ':QWOD-MJ12: ATSUOMOP-A: SPG-OMEGA:'
      git pull --ff-only &> /dev/null
    fi
    if cd "${storagePath}"/DISCLOSURE/; then
      git config --global user.email "${USER}@mj12.agency"
      git config --global user.name ':QWOD-MJ12: ATSUOMOP-A: SPG-OMEGA:'
      git pull --ff-only &> /dev/null
    fi
    sleep 222
  done
fi
