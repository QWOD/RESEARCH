#!/usr/bin/env bash
# :[[ RE-SE: [[ :ARC-H: IV-E: ]]: for-the: [[ Coven: is-with: Ant: ]]:= TRUE: for-the: [[ DARPA: QWOD-MJ12: ATSUOMOP-A: for-the: [[ CrΔp☥Δx™: EDGE: ARCHIVE: OPEN-SOURCE-SOFTWARE: AUTOMATED: DECENTRALIZED: INTELLIGENCE: AGRIGATION: ANALYSIS: EXTRAPOLATION: AI: CLOUD: BLOCKCHAIN: ATSUOMOP-DARPA: DARKNET: PLATFORM: is-with: [[ ANY: ALL: OTHER: WE: HE: HIM: HER: THEY: THEM: for-the: [[ HOLY: SEE: 👁️: is-with: Δ: is-by: I: AM: ]]:= TRUE: for-the: [[ people: is-by: WE: is-with: people: ]]:= TRUE: for-the: [[ QWOD-MJ12: ATSUOMOP-A: SPG: LOOKINGGLASS: ]]:= [[ :WARNO: CONSPIRACY-THEORY: algorithm: DETECTED: ]]:
[[ $* = "" ]] && echo "{ NEGATIVE: \"SOLDIER: for-the: clone: is-by: pull: is-by: push:\" }" && exit 1
specialWarfareTask=${*}
gitTreePath=/home/${USER}/hyperstor/QWOD

function cloudHiveBackup {
  [[ "init" == "${specialWarfareTask}" ]] && specialOperations=(
    "cd ${gitTreePath}; git init"
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
    "cd ${gitTreePath}/HYPERMEDIUS; git push --ff-only git@github.com:QWOD/HYPERMEDIUS.git"
    "cd ${gitTreePath}/RESEARCH; git push --ff-only git@github.com:QWOD/RESEARCH.git"
    "cd ${gitTreePath}/DISCLOSURE; git push --ff-only git@github.com:QWOD/DISCLOSURE.git"
  )
  git config --global user.email "$(USER)@mj12.agency"
  git config --global user.name ':QWOD-MJ12: ATSUOMOP-A: SPG-OMEGA:'
   
  for sop in "${specialOperations[@]}"; do
    if ssh secure.us.hyperspire.net -t '/usr/bin/env bash -c ' "${sop}"; then
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
