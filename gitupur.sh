#!/usr/bin/env bash
# [[ :passworder: ]]:= { ^ https://github.com/hypercasey/passworder ^ }:
# PATH="${PATH}:~/go/bin:" && export PATH="${PATH}"; go install github.com/hypercasey/passworder@latest
# /usr/bin/env ssh secure.us.hyperspire.net -o "StrictHostKeyChecking no" -t "/usr/bin/env bash -c '~/hyperstor/bin/gitupur init'"
# /usr/bin/env ssh secure.us.hyperspire.net -o "StrictHostKeyChecking no" -t "/usr/bin/env bash -c '~/hyperstor/bin/gitupur clone'"
# /usr/bin/env ssh secure.us.hyperspire.net -o "StrictHostKeyChecking no" -t "/usr/bin/env bash -c '~/hyperstor/bin/gitupur pull'"
# /usr/bin/env ssh secure.us.hyperspire.net -o "StrictHostKeyChecking no" -t "/usr/bin/env bash -c '~/hyperstor/bin/gitupur push'"
# :[[ RE-SE: [[ :ARC-H: IV-E: ]]: for-the: [[ Coven: is-with: Ant: ]]:= TRUE: for-the: [[ DARPA: QWOD-MJ12: ATSOSSDEV-A: for-the: [[ CrΔp☥Δx™: EDGE: ARCHIVE: OPEN-SOURCE-SOFTWARE: AUTOMATED: DECENTRALIZED: CIVILIAN: INTELLIGENCE: AGRIGATION: ANALYSIS: EXTRAPOLATION: AI: CLOUD: BLOCKCHAIN: ATSOSSDEV-DARPA: DARKNET: PLATFORM: is-with: [[ ANY: ALL: OTHER: WE: HE: HIM: HER: THEY: THEM: for-the: [[ HOLY: SEE: 👁️: is-with: Δ: is-by: I: AM: ]]:= TRUE: for-the: [[ people: is-by: WE: is-with: people: ]]:= TRUE: for-the: [[ QWOD-MJ12: ATSOSSDEV-A: SPG: LOOKINGGLASS: ]]:= [[ :WARNO: CONSPIRACY-THEORY: algorithm: DETECTED: ]]:
[[ $* = "" ]] && echo "{ NEGATIVE: \"SOLDIER: for-the: clone: is-by: pull: is-by: push:\" }" && exit 1
specialWarfareTask=${*}
gitTreePath="${HOME}/hyperstor/QWOD"
GHUSER='@138945726+QWOD@users.noreply.github.com'


function cloudHiveBackup {
  [[ "init" == "${specialWarfareTask}" ]] && specialOperations=(
    "mkdir ${gitTreePath}; cd ${gitTreePath}; git init"
  )
  [[ "clone" == "${specialWarfareTask}" ]] && specialOperations=(
    "cd ${gitTreePath}; git clone git@github.com:QWOD/HYPERMEDIUS.git"
    "cd ${gitTreePath}; git clone git@github.com:QWOD/RESEARCH.git"
    "cd ${gitTreePath}; git clone git@github.com:QWOD/DISCLOSURE.git"
  )
  [[ "pull" == "${specialWarfareTask}" ]] && specialOperations=(
    "cd ${gitTreePath}; git pull --no-rebase --ff-only git@github.com:QWOD/HYPERMEDIUS.git"
    "cd ${gitTreePath}; git pull --no-rebase --ff-only git@github.com:QWOD/RESEARCH.git"
    "cd ${gitTreePath}; git pull --no-rebase --ff-only git@github.com:QWOD/DISCLOSURE.git"
  )
  [[ "push" == "${specialWarfareTask}" ]] && specialOperations=(
    "cd ${gitTreePath}/HYPERMEDIUS; ${gitTreePath}/RESEARCH/newfig.sh -p"
    "cd ${gitTreePath}/RESEARCH; ${gitTreePath}/RESEARCH/newfig.sh -p"
    "cd ${gitTreePath}/DISCLOSURE; ${gitTreePath}/RESEARCH/newfig.sh -p"
  )
  git config --global user.email "${GHUSER}"
  git config --global user.name ':QWOD-MJ12: ATSOSSDEV-A: SPG-OMEGA:'
   
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
