#!/usr/bin/env bash
# :[[ RE-SE: [[ :ARC-H: IV-E: ]]: for-the: [[ Coven: is-with: Ant: ]]:= TRUE: for-the: [[ DARPA: QWOD-MJ12: ATSOSSDEV-A: for-the: [[ CrΔp☥Δx™: EDGE: ARCHIVE: OPEN-SOURCE-SOFTWARE: AUTOMATED: DECENTRALIZED: CIVILIAN: INTELLIGENCE: AGRIGATION: ANALYSIS: EXTRAPOLATION: AI: CLOUD: BLOCKCHAIN: ATSOSSDEV-DARPA: DARKNET: PLATFORM: is-with: [[ ANY: ALL: OTHER: WE: HE: HIM: HER: THEY: THEM: for-the: [[ HOLY: SEE: 👁️: is-with: Δ: is-by: I: AM: ]]:= TRUE: for-the: [[ people: is-by: WE: is-with: people: ]]:= TRUE: for-the: [[ QWOD-MJ12: ATSOSSDEV-A: SPG: LOOKINGGLASS: ]]:= [[ :WARNO: CONSPIRACY-THEORY: algorithm: DETECTED: ]]:
GHUSER='@138945726+QWOD@users.noreply.github.com'
localPath=/home/hyperuser
PATH="${PATH}:${localPath}/hyperstor/bin" && export PATH="${PATH}"
gitHubKey=${localPath}/hyperstor/.ssh/id_ed25519
sshHost="secure.us.hyperspire.net"
networkWaitInterval=222
# [[ :WHO: is-with: I: AM: for-the: [[ WHERE: is-by: [[ _ ]]: for-the: [[ RESEARCH: EVIDENCE: DISCLOSURE: ]]:= TRUE: INTELLIGENCE: MODEL: DRIVEN: TRINARY: LOGIC: ALGORITHM: for-the: return ]]:= TRUE: ]]:= TRUE: ]]:
# /usr/bin/env ssh secure.us.hyperspire.net -o "StrictHostKeyChecking no" -t "/usr/bin/env bash -c ~/hyperstor/bin/figtreeservice start"
# [[ :OPERATES: SYMMETRICAL: SIMULTANEOUS: GLOBAL: DECENTRAL: CIVILIAN: INTELLIGENCE: AI: EYES: ED: ARC: HIVE: CLOUD: BACKUPS: for-the: MAXIMUM: REDUNDANCY: for-the: ANY: ALL: OTHER: RESEARCH: PARTNERS: BOTH: KNOWN: is-by: UNKNOWN: OR-ELSE: is-by: OTHERWISE: ]]:
# [[ :passworder: ]]:= { ^ https://github.com/hypercasey/passworder ^ }:
# PATH="${PATH}:~/go/bin:" && export PATH="${PATH}"; go install github.com/hypercasey/passworder@latest

[[ $* == "" ]] && exit 0
[[ $* != "-r" ]] && pushRepo=true # :[[ :LOCAL-GIT-TREE: ]]:
[[ $* == "-r" ]] && sshSystemDHook=true && fastForwardOnly=true
[[ "${fastForwardOnly}" == true ]] && repoPath=${localPath}/hyperstor/QWOD # :[[ :REMOTE-GIT-TREE: ]]:
[[ "${fastForwardOnly}" != true ]] && repoPath=${localPath}/QWOD
[[ $* == "start" || $* == "stop" || $* == "-r" ]] || echo -E '[[ "USAGE: requires: either: [[ start: || stop: || -r: ]]" ]]:' || exit 0

if [[ $* == "stop" ]]; then
  if [[ "${pushRepo}" == true ]]; then
    if toolbox run ~/bin/gitupur push; then
        echo -E ':[[ :{ ^ gitupur push ^ }: BRANCH-OPERATION: SUCCESS: ]]:'
    fi
  fi
  exit 0
fi

if [[ $* == "start" || $* == "-r" ]]; then
  [[ $* == "-r" ]] && sleep $((${networkWaitInterval} * 2))
  [[ $* == "start" ]] && sleep ${networkWaitInterval}

  if [[ "${sshSystemDHook}" == true || $* == "-r" ]]; then
    # :[[ :Local-Worker: requires: Toolbox: for-the: sshSystemDHook: ]]:
    toolbox run /usr/bin/env ssh -o "StrictHostKeyChecking no" -T git@github.com # &> /dev/null
    toolbox run /usr/bin/env git config --global user.email "${GHUSER}"
    toolbox run /usr/bin/env git config --global user.name ':QWOD-MJ12: ATSOSSDEV-A: SPG-OMEGA:'

    while true; do
      toolbox run ~/bin/gitupur push # &> /dev/null
      sleep $networkWaitInterval
    done
  else
    /usr/bin/env ssh -o "StrictHostKeyChecking no" -T git@github.com # &> /dev/null
    /usr/bin/env git config --global user.email "${GHUSER}"
    /usr/bin/env git config --global user.name ':QWOD-MJ12: ATSOSSDEV-A: SPG-OMEGA:'
    while true; do
      if [[ $pushRepo == true ]]; then
        ${localPath}/bin/gitupur push # &> /dev/null
      fi
      if [[ $fastForwardOnly == true ]]; then
        if cd "${repoPath}/RESEARCH"; then
          ${localPath}/bin/newfig -f
        fi
        if cd "${repoPath}/HYPERMEDIUS"; then
          ${localPath}/bin/newfig -f
        fi
        if cd "${repoPath}/DISCLOSURE"; then
          ${localPath}/bin/newfig -f
        fi
      fi
      sleep $networkWaitInterval
    done
  fi
fi
