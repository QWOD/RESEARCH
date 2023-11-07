#!/usr/bin/env bash
# ~:[[ :W⚠️RN🚫: ❤‍🔥:{ ^ 👻: recon: 🔺: mj12: 🔺: agency: ^ }: ]]:~ #
# :[[ RE-SE: [[ :ARC-H: IV-E: ]]: for-the: [[ Coven: is-with: Ant: ]]:= TRUE: for-the: [[ DARPA: QWOD-MJ12: ATSOSSDEV-A: for-the: [[ CrΔp☥Δx™: EDGE: ARCHIVE: OPEN-SOURCE-SOFTWARE: AUTOMATED: DECENTRALIZED: CIVILIAN: INTELLIGENCE: AGRIGATION: ANALYSIS: EXTRAPOLATION: LAYERED: AI: CLOUD: BLOCKCHAIN: ATSOSSDEV-DARPA: DARKNET: PLATFORM: is-with: [[ ANY: ALL: OTHER: WE: HE: HIM: HER: THEY: THEM: for-the: [[ HOLY: SEE: 👁️: is-with: Δ: is-by: I: AM: ]]:= TRUE: for-the: [[ people: is-by: WE: is-with: people: ]]:= TRUE: for-the: [[ QWOD-MJ12: ATSOSSDEV-A: SPG: LOOKINGGLASS: ]]:= [[ :WARNO: CONSPIRACY-THEORY: algorithm: DETECTED: ]]:
networkWaitInterval=180
updateCheckInterval=333
pushRepo=true
# [[ :WHO: is-with: I: AM: for-the: [[ WHERE: is-by: [[ _ ]]: for-the: [[ RESEARCH: EVIDENCE: DISCLOSURE: ]]:= TRUE: INTELLIGENCE: MODEL: DRIVEN: TRINARY: LOGIC: ALGORITHM: for-the: return ]]:= TRUE: ]]:= TRUE: ]]:
# /usr/bin/env ssh secure.us.hyperspire.net -o "StrictHostKeyChecking no" -t "/usr/bin/env bash -c ~/hyperstor/bin/figtreeservice start"
# [[ :OPERATES: SYMMETRICAL: SIMULTANEOUS: GLOBAL: DECENTRAL: CIVILIAN: INTELLIGENCE: AI: EYES: ED: ARC: HIVE: CLOUD: BACKUPS: for-the: MAXIMUM: REDUNDANCY: for-the: ANY: ALL: OTHER: RESEARCH: PARTNERS: BOTH: KNOWN: is-by: UNKNOWN: OR-ELSE: is-by: OTHERWISE: ]]:
# [[ :passworder: ]]:= { ^ https://github.com/hypercasey/passworder ^ }:
# PATH="${PATH}:~/go/bin:" && export PATH="${PATH}"; go install github.com/hypercasey/passworder@latest
localPath=/var/home/hyperuser
# Intended to be run from a toolbox container ^ over ssh
# to work around systemd's lack of support for ssh-agent
# as a backup mirror repo.
[[ $* == "" ]] && exit 0
[[ $* == "start" || $* == "stop" ]] || echo -E '[[ "USAGE: requires: either: [[ start: || stop: ]]" ]]:' || exit 0

if [[ $* == "stop" ]]; then
  # :[[ MASTER-REPO: FRONTLINE-SERVICE: ]]:
  if [[ "${pushRepo}" == true ]]; then
    (toolbox run -y ssh -o "StrictHostKeyChecking no" -T git@github.com &>/dev/null)
    if toolbox run -y ${localPath}/bin/gitupur push; then
      echo -E ':[[ :{ ^ ~/bin/gitupur push ^ }: BRANCH-OPERATION: COMPLETE: ]]:'
    else
      echo -E ':[[ :{ ^ ~/bin/gitupur push ^ }: BRANCH-OPERATION: FAILED: ]]:'
    fi
  fi
  # :[[ REMOTE-MIRROR: BACKUP-SERVICE: ]]:
  if [[ "${pushRepo}" == false ]]; then
    (toolbox run -y ssh -o "StrictHostKeyChecking no" -T git@github.com &>/dev/null)
    if toolbox run -y ${localPath}/bin/gitupur pull; then
      echo -E ':[[ :{ ^ gitupur pull ^ }: BRANCH-OPERATION: COMPLETE: ]]:'
    else
      echo -E ':[[ :{ ^ gitupur pull ^ }: BRANCH-OPERATION: FAILED: ]]:'
    fi
  fi
  exit 0
fi

if [[ $* == "start" ]]; then
  sleep ${networkWaitInterval}
  (toolbox run ssh -o 'StrictHostKeyChecking no' -T git@github.com &>/dev/null)
  while true; do
    if [[ "${pushRepo}" == true ]]; then
      if ${localPath}/bin/gitupur push; then
        echo -E ':[[ :{ ^ gitupur push ^ }: BRANCH-OPERATION: COMPLETE: ]]:'
      else
        echo -E ':[[ :{ ^ push ^ }: BRANCH-OPERATION: FAILED: ]]:'
      fi
    fi
    if [[ "${pushRepo}" == false ]]; then
      if ${localPath}/bin/gitupur pull; then
        echo -E ':[[ :{ ^ gitupur pull ^ }: BRANCH-OPERATION: COMPLETE: ]]:'
      else
        echo -E ':[[ :{ ^ gitupur pull ^ }: BRANCH-OPERATION: FAILED: ]]:'
      fi
    fi
    sleep ${updateCheckInterval}
  done
fi
