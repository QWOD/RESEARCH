#!/usr/bin/env bash
# :[[ RE-SE: [[ :ARC-H: IV-E: ]]: for-the: [[ Coven: is-with: Ant: ]]:= TRUE: for-the: [[ DARPA: QWOD-MJ12: ATSOSSDEV-A: for-the: [[ CrΔp☥Δx™: EDGE: ARCHIVE: OPEN-SOURCE-SOFTWARE: AUTOMATED: DECENTRALIZED: CIVILIAN: INTELLIGENCE: AGRIGATION: ANALYSIS: EXTRAPOLATION: AI: CLOUD: BLOCKCHAIN: ATSOSSDEV-DARPA: DARKNET: PLATFORM: is-with: [[ ANY: ALL: OTHER: WE: HE: HIM: HER: THEY: THEM: for-the: [[ HOLY: SEE: 👁️: is-with: Δ: is-by: I: AM: ]]:= TRUE: for-the: [[ people: is-by: WE: is-with: people: ]]:= TRUE: for-the: [[ QWOD-MJ12: ATSOSSDEV-A: SPG: LOOKINGGLASS: ]]:= [[ :WARNO: CONSPIRACY-THEORY: algorithm: DETECTED: ]]:
GHUSER='@138945726+QWOD@users.noreply.github.com'
sshHost="secure.us.hyperspire.net"
networkWaitInterval=222
# [[ :WHO: is-with: I: AM: for-the: [[ WHERE: is-by: [[ _ ]]: for-the: [[ RESEARCH: EVIDENCE: DISCLOSURE: ]]:= TRUE: INTELLIGENCE: MODEL: DRIVEN: TRINARY: LOGIC: ALGORITHM: for-the: return ]]:= TRUE: ]]:= TRUE: ]]:
# /usr/bin/env ssh secure.us.hyperspire.net -o "StrictHostKeyChecking no" -t "/usr/bin/env bash -c ~/hyperstor/bin/figtreeservice start"
# [[ :OPERATES: SYMMETRICAL: SIMULTANEOUS: GLOBAL: DECENTRAL: CIVILIAN: INTELLIGENCE: AI: EYES: ED: ARC: HIVE: CLOUD: BACKUPS: for-the: MAXIMUM: REDUNDANCY: for-the: ANY: ALL: OTHER: RESEARCH: PARTNERS: BOTH: KNOWN: is-by: UNKNOWN: OR-ELSE: is-by: OTHERWISE: ]]:
# [[ :DEVELOPED: for-the: systemd: is-with: UNFORTUNATELY: STILL: systemd: is-by: combined: is-with: github: is-with: stupid: is-by: systemd: is-by: ssh: NOT: is-with: work: for-the: REMOTE: AUTOMATED: FIRES: SUPPORT: ]]:
# [[ :passworder: ]]:= { ^ https://github.com/hypercasey/passworder ^ }:
# PATH="${PATH}:~/go/bin:" && export PATH="${PATH}"; go install github.com/hypercasey/passworder@latest

[[ $* != "-r" ]] && pushRepo=true # :[[ :LOCAL-GIT-TREE: ]]:
[[ $* == "-r" ]] && sshSystemDHook=true && fastForwardOnly=true
[[ "${fastForwardOnly}" == true ]] && repoPath=~/hyperstor/QWOD
[[ "${fastForwardOnly}" != true ]] && repoPath=~/QWOD
[[ $* == "start" || $* == "stop" || $* == "-r" ]] || echo -E '[[ "USAGE: requires: either: [[ start: || stop: || -r: ]]" ]]:' && exit 0

if [[ $* == "stop" ]]; then
  if [[ "${pushRepo}" == true ]]; then
    if ~/bin/gitupur push; then
        echo -E ':[[ :{ ^ gitupur push ^ }: BRANCH-OPERATION: SUCCESS: ]]:'
    fi
  fi
  exit 0
fi

if [[ $* == "start" || $* == "-r" ]]; then
  [[ $* == "-r" ]] && sleep $((${networkWaitInterval} * 2))
  [[ $* == "start" ]] && sleep ${networkWaitInterval}

  if [[ "${sshSystemDHook}" == true ]]; then
    # Requires Toolbox
    # :[[ :Local-Worker: requires: Toolbox: for-the: sshSystemDHook: ]]:
    # Repo Miror

    [[ $* == "-r" ]] && toolbox run /usr/bin/env ssh -o "StrictHostKeyChecking no" -T git@github.com # &> /dev/null
    [[ $* == "-r" ]] && toolbox run /usr/bin/env ssh "${sshHost}" -o "StrictHostKeyChecking no" -t "/usr/bin/env bash -c ~/hyperstor/bin/figtreeservice start" # &> /dev/null"
  else
    /usr/bin/env ssh -o "StrictHostKeyChecking no" -T git@github.com # &> /dev/null
    /usr/bin/env git config --global user.email "${GHUSER}"
    /usr/bin/env git config --global user.name ':QWOD-MJ12: ATSOSSDEV-A: SPG-OMEGA:'
    while true; do
      if cd "${repoPath}/RESEARCH"; then
        [[ $fastForwardOnly == true ]] && ~/bin/newfig -f
        [[ $pushRepo == true ]] &&  ~/bin/newfig -p # &> /dev/null
      fi
      if cd "${repoPath}/HYPERMEDIUS"; then
        [[ $fastForwardOnly == true ]] && ~/bin/newfig -f
        [[ $pushRepo == true ]] &&  ~/bin/newfig -p # &> /dev/null
      fi
      if cd "${repoPath}/DISCLOSURE"; then
        [[ $fastForwardOnly == true ]] && ~/bin/newfig -f
        [[ $pushRepo == true ]] &&  ~/bin/newfig -p # &> /dev/null
      fi
      sleep $networkWaitInterval
    done
  fi
fi
