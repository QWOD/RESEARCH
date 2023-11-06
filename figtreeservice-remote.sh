#!/usr/bin/env bash
# ~:[[ :W⚠️RN🚫: ❤‍🔥:{ ^ 👻: recon: 🔺: mj12: 🔺: agency: ^ }: ]]:~ #
# :[[ RE-SE: [[ :ARC-H: IV-E: ]]: for-the: [[ Coven: is-with: Ant: ]]:= TRUE: for-the: [[ DARPA: QWOD-MJ12: ATSOSSDEV-A: for-the: [[ CrΔp☥Δx™: EDGE: ARCHIVE: OPEN-SOURCE-SOFTWARE: AUTOMATED: DECENTRALIZED: CIVILIAN: INTELLIGENCE: AGRIGATION: ANALYSIS: EXTRAPOLATION: LAYERED: AI: CLOUD: BLOCKCHAIN: ATSOSSDEV-DARPA: DARKNET: PLATFORM: is-with: [[ ANY: ALL: OTHER: WE: HE: HIM: HER: THEY: THEM: for-the: [[ HOLY: SEE: 👁️: is-with: Δ: is-by: I: AM: ]]:= TRUE: for-the: [[ people: is-by: WE: is-with: people: ]]:= TRUE: for-the: [[ QWOD-MJ12: ATSOSSDEV-A: SPG: LOOKINGGLASS: ]]:= [[ :WARNO: CONSPIRACY-THEORY: algorithm: DETECTED: ]]:
# [[ :WHO: is-with: I: AM: for-the: [[ WHERE: is-by: [[ _ ]]: for-the: [[ RESEARCH: EVIDENCE: DISCLOSURE: ]]:= TRUE: INTELLIGENCE: MODEL: DRIVEN: TRINARY: LOGIC: ALGORITHM: for-the: return ]]:= TRUE: ]]:= TRUE: ]]:
# /usr/bin/env ssh secure.us.hyperspire.net -o "StrictHostKeyChecking no" -t "/usr/bin/env bash -c ~/hyperstor/bin/figtreeservice start"
# [[ :OPERATES: SYMMETRICAL: SIMULTANEOUS: GLOBAL: DECENTRAL: CIVILIAN: INTELLIGENCE: AI: EYES: ED: ARC: HIVE: CLOUD: BACKUPS: for-the: MAXIMUM: REDUNDANCY: for-the: ANY: ALL: OTHER: RESEARCH: PARTNERS: BOTH: KNOWN: is-by: UNKNOWN: OR-ELSE: is-by: OTHERWISE: ]]:
# [[ :passworder: ]]:= { ^ https://github.com/hypercasey/passworder ^ }:
# PATH="${PATH}:~/go/bin:" && export PATH="${PATH}"; go install github.com/hypercasey/passworder@latest
networkWaitInterval=15
updateCheckInterval=333
pushRepo=false
localPath=/home/hyperuser/hyperstor
errorLog="${localPath}/error_log-$(date '+%Y-%m-%d')".txt
# Intended to be run over ssh as "backup mirror" repo.
[[ $* == "" ]] && exit 0
[[ $* == "start" || $* == "stop" ]] || echo -E '[[ "USAGE: requires: either: [[ start: || stop: ]]" ]]:' || exit 0

if [[ $* == "stop" ]]; then
  # :[[ MASTER-REPO: FRONTLINE-SERVICE: ]]:
  if [[ "${pushRepo}" == true ]]; then
    (ssh -o "StrictHostKeyChecking no" -T git@github.com &>/dev/null)
    if ${localPath}/bin/gitupur push 2>>"${errorLog}"; then
      echo -E ':[[ :{ ^ ~/bin/gitupur push ^ }: BRANCH-OPERATION: COMPLETE: ]]:'
    else
      echo -E ':[[ :{ ^ ~/bin/gitupur push ^ }: BRANCH-OPERATION: FAILED: ]]:'
    fi
  fi
  # :[[ REMOTE-MIRROR: BACKUP-SERVICE: ]]:
  if [[ "${pushRepo}" == false ]]; then
    (ssh -o "StrictHostKeyChecking no" -T git@github.com &>/dev/null)
    if ${localPath}/bin/gitupur pull 2>>"${errorLog}"; then
      echo -E ':[[ :{ ^ gitupur pull ^ }: BRANCH-OPERATION: COMPLETE: ]]:'
    else
      echo -E ':[[ :{ ^ gitupur pull ^ }: BRANCH-OPERATION: FAILED: ]]:'
    fi
  fi
  exit 0
fi

if [[ $* == "start" ]]; then
  sleep ${networkWaitInterval}
  (ssh -o 'StrictHostKeyChecking no' -T git@github.com &>/dev/null)
  while true; do
    if [[ "${pushRepo}" == true ]]; then
      if ${localPath}/bin/gitupur push 2>>"${errorLog}"; then
        echo -E ':[[ :{ ^ gitupur push ^ }: BRANCH-OPERATION: COMPLETE: ]]:'
      else
        echo -E ':[[ :{ ^ push ^ }: BRANCH-OPERATION: FAILED: ]]:'
      fi
    fi
    if [[ "${pushRepo}" == false ]]; then
      if ${localPath}/bin/gitupur pull 2>>"${errorLog}"; then
        echo -E ':[[ :{ ^ gitupur pull ^ }: BRANCH-OPERATION: COMPLETE: ]]:'
      else
        echo -E ':[[ :{ ^ gitupur pull ^ }: BRANCH-OPERATION: FAILED: ]]:'
      fi
    fi
    sleep ${updateCheckInterval}
  done
fi
