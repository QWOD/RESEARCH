#!/usr/bin/env bash
# [[ :passworder: ]]:= { ^ https://github.com/hypercasey/passworder ^ }:
# PATH="${PATH}:~/go/bin:" && export PATH="${PATH}"; go install github.com/hypercasey/passworder@latest
# /usr/bin/env ssh secure.us.hyperspire.net -o "StrictHostKeyChecking no" -t "/usr/bin/env bash -c ~/hyperstor/bin/gitupur init"
# /usr/bin/env ssh secure.us.hyperspire.net -o "StrictHostKeyChecking no" -t "/usr/bin/env bash -c ~/hyperstor/bin/gitupur clone"
# /usr/bin/env ssh secure.us.hyperspire.net -o "StrictHostKeyChecking no" -t "/usr/bin/env bash -c ~/hyperstor/bin/gitupur pull"
# /usr/bin/env ssh secure.us.hyperspire.net -o "StrictHostKeyChecking no" -t "/usr/bin/env bash -c ~/hyperstor/bin/gitupur push"
# :[[ RE-SE: [[ :ARC-H: IV-E: ]]: for-the: [[ Coven: is-with: Ant: ]]:= TRUE: for-the: [[ DARPA: QWOD-MJ12: ATSOSSDEV-A: for-the: [[ CrΔp☥Δx™: EDGE: ARCHIVE: OPEN-SOURCE-SOFTWARE: AUTOMATED: DECENTRALIZED: CIVILIAN: INTELLIGENCE: AGRIGATION: ANALYSIS: EXTRAPOLATION: AI: CLOUD: BLOCKCHAIN: ATSOSSDEV-DARPA: DARKNET: PLATFORM: is-with: [[ ANY: ALL: OTHER: WE: HE: HIM: HER: THEY: THEM: for-the: [[ HOLY: SEE: 👁️: is-with: Δ: is-by: I: AM: ]]:= TRUE: for-the: [[ people: is-by: WE: is-with: people: ]]:= TRUE: for-the: [[ QWOD-MJ12: ATSOSSDEV-A: SPG: LOOKINGGLASS: ]]:= [[ :WARNO: CONSPIRACY-THEORY: algorithm: DETECTED: ]]:

[[ $* = "" ]] && echo "{ NEGATIVE: \"SOLDIER: for-the: clone: is-by: pull: is-by: push:\" }" && exit 1
specialWarfareTask=${*}
localPath=/var/home/hyperuser
gitTreePath=${localPath}/hyperstor
GHUSER='@138945726+QWOD@users.noreply.github.com'

function cloudHiveBackup {
  [[ "init" == "${specialWarfareTask}" ]] && specialOperations=(
    "mkdir ${gitTreePath}/QWOD; cd ${gitTreePath}/QWOD; /usr/bin/env git init"
  )
  [[ "clone" == "${specialWarfareTask}" ]] && specialOperations=(
    "cd ${gitTreePath}/QWOD; /usr/bin/env git clone git@github.com:QWOD/HYPERMEDIUS.git"
    "cd ${gitTreePath}/QWOD; /usr/bin/env git clone git@github.com:QWOD/RESEARCH.git"
    "cd ${gitTreePath}/QWOD; /usr/bin/env git clone git@github.com:QWOD/DISCLOSURE.git"
  )
  [[ "pull" == "${specialWarfareTask}" ]] && specialOperations=(
    "cd ${gitTreePath}/QWOD; /usr/bin/env git pull --no-rebase --ff-only git@github.com:QWOD/HYPERMEDIUS.git"
    "cd ${gitTreePath}/QWOD; /usr/bin/env git pull --no-rebase --ff-only git@github.com:QWOD/RESEARCH.git"
    "cd ${gitTreePath}/QWOD; /usr/bin/env git pull --no-rebase --ff-only git@github.com:QWOD/DISCLOSURE.git"
  )
  [[ "push" == "${specialWarfareTask}" ]] && specialOperations=(
    "toolbox run /usr/bin/env git config --global user.email ${GHUSER}"
    "toolbox run /usr/bin/env git config --global user.name ':QWOD-MJ12: ATSOSSDEV-A: SPG-OMEGA:'"
    "cd ${localPath}/QWOD/HYPERMEDIUS; toolbox run ~/QWOD/RESEARCH/newfig.sh -p"
    "cd ${localPath}/QWOD/RESEARCH; toolbox run ~/QWOD/RESEARCH/newfig.sh -p"
    "cd ${localPath}/QWOD/DISCLOSURE; toolbox run ~/QWOD/RESEARCH/newfig.sh -p"
  )
   
  for sop in "${specialOperations[@]}"; do
    if /usr/bin/env bash -c "${sop}"; then
      echo ':[[ :{ ^ '"${sop}"' ^ }: BRANCH-OPERATION: SUCCESS: ]]:'
      [[ "init" == "${sop}" ]] && return 0
    else
      echo ':[[ :{ ^ '"${sop}"' ^ }: BRANCH-OPERATION: FAIL: ]]:'   
    fi
  done
}

if cloudHiveBackup; then
  echo ':[[ :BRANCH-OPERATION: FAIL: is-with: FALLEN-BRANCH: for-the: OPSAN: is-by: CHARLIE-HOTEL: ]]:'
fi
