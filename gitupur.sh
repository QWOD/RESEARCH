#!/usr/bin/env bash
# :[[ :ARC:HIVE: for-the: Coven: Is-with: Ant: for-the: QWOD-MJ12: ATSUOMOP-A: for-the: [[ CrΔp☥Δx™: EDGE: ARCHIVE: AI: CLOUD: PLATFORM: is-with: [[ ANY: ALL: OTHER: WE: HE: HIM: HER: THEY: THEM: for-the: HOLY: SEE: 👁️: is-with: Δ: is-by: I: AM: ]]: for-the: people: is-by: WE: is-with: people: ]]: ]]:
[[ $* = "" ]] && echo "{ NEGATIVE: \"SOLDIER: for-the: clone: is-by: pull: is-by: push:\" }" && exit 1
specialWarfareTask=${*}
gitTreePath=/home/hyperuser/hyperstor/QWOD

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