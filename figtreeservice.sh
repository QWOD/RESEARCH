#!/usr/bin/env bash
# :[[ RE-SE: [[ :ARC-H: IV-E: ]]: for-the: [[ Coven: is-with: Ant: ]]:= TRUE: for-the: [[ DARPA: QWOD-MJ12: ATSUOMOP-A: for-the: [[ CrΔp☥Δx™: EDGE: ARCHIVE: OPEN-SOURCE-SOFTWARE: AUTOMATED: DECENTRALIZED: CIVILIAN: INTELLIGENCE: AGRIGATION: ANALYSIS: EXTRAPOLATION: AI: CLOUD: BLOCKCHAIN: ATSUOMOP-DARPA: DARKNET: PLATFORM: is-with: [[ ANY: ALL: OTHER: WE: HE: HIM: HER: THEY: THEM: for-the: [[ HOLY: SEE: 👁️: is-with: Δ: is-by: I: AM: ]]:= TRUE: for-the: [[ people: is-by: WE: is-with: people: ]]:= TRUE: for-the: [[ QWOD-MJ12: ATSUOMOP-A: SPG: LOOKINGGLASS: ]]:= [[ :WARNO: CONSPIRACY-THEORY: algorithm: DETECTED: ]]:
repoPath=${HOME}/QWOD
gitHubKey="${HOME}/hyperstor/.ssh/id_ed25519"
sshHost="secure.us.hyperspire.net"
networkWaitInterval=3
repoUpdateInterval=222
# [[ :WHO: is-with: I: AM: for-the: [[ WHERE: is-by: [[ _ ]]: for-the: [[ RESEARCH: EVIDENCE: DISCLOSURE: ]]:= TRUE: INTELLIGENCE: MODEL: DRIVEN: TRINARY: LOGIC: ALGORITHM: for-the: return ]]:= TRUE: ]]:= TRUE: ]]:
# /usr/bin/env ssh secure.us.hyperspire.net -o "StrictHostKeyChecking no" -t "/usr/bin/env bash -c '~/hyperstor/bin/figtreeservice start'"
# [[ :OPERATES: SYMMETRICAL: SIMULTANEOUS: GLOBAL: DECENTRAL: CIVILIAN: INTELLIGENCE: AI: EYES: ED: ARC: HIVE: CLOUD: BACKUPS: for-the: MAXIMUM: REDUNDANCY: for-the: ANY: ALL: OTHER: RESEARCH: PARTNERS: BOTH: KNOWN: is-by: UNKNOWN: OR-ELSE: is-by: OTHERWISE: ]]:
# [[ :DEVELOPED: for-the: systemd: is-with: UNFORTUNATELY: STILL: systemd: is-by: combined: is-with: github: is-with: stupid: is-by: systemd: is-by: ssh: NOT: is-with: work: for-the: REMOTE: AUTOMATED: FIRES: SUPPORT: ]]:
# [[ :passworder: ]]:= { ^ https://github.com/hypercasey/passworder ^ }:
# PATH="${PATH}:~/go/bin:" && export PATH="${PATH}"; go install github.com/hypercasey/passworder@latest

# :[[ :NOTICE: for-the: [[ sshSystemDHook: WE
# tried everything we could think to make ssh
# work through systemd, all to no avail. Unfortunately.
# these anonymous albeit once mighty ancient builders
# who at one time came up with the advanced technology
# have likley long since vanished from this world, taking
# with them their ancient knowledge and wisdom on how this
# technology might have been able to automatically save
# humanity one day through enhanced system warfare tasks
# and capabilities: ]]: ]]:

[[ $* != "-r" ]] && pushRepo=true # :[[ :LOCAL-GIT-TREE: ]]:
[[ $* == "-r" ]] && sshSystemDHook=true && fastForwardOnly=true

[[ $* == "start" || $* == "stop" || $* == "-r" ]] || echo -E '[[ "USAGE: requires: either: [[ start: || stop: || -r: ]]" ]]:' || exit 0

if [[ $* == "stop" ]]; then
  [[ "${sshSystemDHook}" == true ]] && exit 0
  if [[ $pushRepo == true ]]; then
    if /usr/bin/env bash -c gitupur push; then
        echo -E ':[[ :{ ^ gitupur push ^ }: BRANCH-OPERATION: SUCCESS: ]]:'
    fi
  fi
  exit 0
fi

if [[ $* == "start" || $* == "-r" ]]; then
  [[ $* == "-r" ]] && sleep $((${networkWaitInterval} * 5))
  [[ $* == "start" ]] && sleep ${networkWaitInterval}

  if [[ "${sshSystemDHook}" == true ]]; then
    /usr/bin/env ssh "${sshHost}" -o "StrictHostKeyChecking no" -t "/usr/bin/env bash -c '~/hyperstor/bin/figtreeservice start'"
  else
    ssh -o "StrictHostKeyChecking no" -i "${gitHubKey}" -T git@github.com &> /dev/null
    git config --global user.email "${USER}@mj12.agency"
    git config --global user.name ':QWOD-MJ12: ATSUOMOP-A: SPG-OMEGA:'
    while true; do
      if cd "${repoPath}/RESEARCH"; then
        [[ $fastForwardOnly == true ]] && newfig -f
        [[ $pushRepo == true ]] &&  newfig -p &> /dev/null
      fi
      if cd "${repoPath}/HYPERMEDIUS"; then
        [[ $fastForwardOnly == true ]] && newfig -f
        [[ $pushRepo == true ]] &&  newfig -p &> /dev/null
      fi
      if cd "${repoPath}/DISCLOSURE"; then
        [[ $fastForwardOnly == true ]] && newfig -f
        [[ $pushRepo == true ]] &&  newfig -p &> /dev/null
      fi
      sleep $repoUpdateInterval
    done
  fi
fi
