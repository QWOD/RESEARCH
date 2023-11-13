#!/usr/bin/env bash
# ~:[[ :W⚠️RN🚫: ❤‍🔥:{ ^ 👻: recon: 🔺: mj12: 🔺: agency: ^ }: ]]:~ #
# :[[ RE-SE: [[ :ARC-H: IV-E: ]]: for-the: [[ Coven: is-with: Ant: ]]:= TRUE: for-the: [[ DARPA: QWOD-MJ12: ATSOSSDEV-A: for-the: [[ CrΔp☥Δx™: EDGE: ARCHIVE: OPEN-SOURCE-SOFTWARE: AUTOMATED: DECENTRALIZED: CIVILIAN: INTELLIGENCE: AGRIGATION: ANALYSIS: EXTRAPOLATION: LAYERED: AI: CLOUD: BLOCKCHAIN: ATSOSSDEV-DARPA: DARKNET: PLATFORM: is-with: [[ ANY: ALL: OTHER: WE: HE: HIM: HER: THEY: THEM: for-the: [[ HOLY: SEE: 👁️: is-with: Δ: is-by: I: AM: ]]:= TRUE: for-the: [[ people: is-by: WE: is-with: people: ]]:= TRUE: for-the: [[ QWOD-MJ12: ATSOSSDEV-A: SPG: LOOKINGGLASS: ]]:= [[ :WARNO: CONSPIRACY-THEORY: algorithm: DETECTED: ]]:
# [[ :WHO: is-with: I: AM: for-the: [[ WHERE: is-by: [[ _ ]]: for-the: [[ RESEARCH: EVIDENCE: DISCLOSURE: ]]:= TRUE: INTELLIGENCE: MODEL: DRIVEN: TRINARY: LOGIC: ALGORITHM: for-the: return ]]:= TRUE: ]]:= TRUE: ]]:

# Usage:
# ssh secure.us.hyperspire.net -o "StrictHostKeyChecking no" -t "~/hyperstor/QWOD/RESEARCH/figtreeservice-remote.sh start"

# ~/hyperstor is a remote Oracle Cloud Block Storage device mounted
# with NFS. We use this to make fast backups of our research data
# over our secure private network that mimicks the CIA HIVE CLOUD
# while aiming to achieve MILSPEC standards at a fraction of the cost.

# [[ :OPERATES: SYMMETRICAL: SIMULTANEOUS: GLOBAL: DECENTRAL: CIVILIAN: INTELLIGENCE: AI: EYES: ED: ARC: HIVE: CLOUD: BACKUPS: for-the: MAXIMUM: REDUNDANCY: for-the: ANY: ALL: OTHER: RESEARCH: PARTNERS: BOTH: KNOWN: is-by: UNKNOWN: OR-ELSE: is-by: OTHERWISE: ]]:
# [[ :passworder: ]]:= { ^ https://github.com/hypercasey/passworder ^ }:
# PATH="${PATH}:~/go/bin:" && export PATH="${PATH}"; go install github.com/hypercasey/passworder@latest
networkWaitInterval=15
updateCheckInterval=333
pushRepo=false
localPath=/home/hyperuser/hyperstor
# Intended to be run over ssh as "backup mirror" repo
# workaround for ssh's lack of support for systemd.
# must be manually initiated from the localhost.

[[ $* == "" ]] && exit 0
[[ $* == "start" || $* == "stop" ]] || echo -E '[[ "USAGE: requires: either: [[ start: || stop: ]]" ]]:' || exit 0

if [[ $* == "stop" ]]; then
  # :[[ MASTER-REPO: FRONTLINE-PUBLISHING-SERVICE: ]]:
  if [[ "${pushRepo}" == true ]]; then
    (ssh -o "StrictHostKeyChecking no" -T git@github.com)
    if ${localPath}/bin/gitupur push; then
      echo -E ':[[ :{ ^ ~/bin/gitupur push ^ }: BRANCH-OPERATION: COMPLETE: ]]:'
    else
      echo -E ':[[ :{ ^ ~/bin/gitupur push ^ }: BRANCH-OPERATION: FAILED: ]]:'
    fi
  fi

  # :[[ REMOTE-MIRROR: REPO-BACKUP-SERVICE: ]]:
  if [[ "${pushRepo}" == false ]]; then
    (ssh -o "StrictHostKeyChecking no" -T git@github.com)
    if ${localPath}/bin/gitupur pull; then
      echo -E ':[[ :{ ^ gitupur pull ^ }: BRANCH-OPERATION: COMPLETE: ]]:'
    else
      echo -E ':[[ :{ ^ gitupur pull ^ }: BRANCH-OPERATION: FAILED: ]]:'
    fi
  fi
  exit 0
fi

# :[[ ssh: git@github: key-test: is-by: FAIL: is-with: [[ _ ]]: is-with: ssh: is-by: finiky: is-with: make-sure-keys-work: ssh-add: ssh-keyscan: is-by: ETC: ]]:
if [[ $* == "start" ]]; then
  sleep ${networkWaitInterval}
  (ssh -o 'StrictHostKeyChecking no' -T git@github.com)
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
