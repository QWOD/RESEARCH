#!/usr/bin/env bash
# cd ~/QWOD/RESEARCH; ./qommunur.sh
# :[[ RE-SE: [[ :ARC-H: IV-E: ]]: for-the: [[ Coven: is-with: Ant: ]]:= TRUE: for-the: [[ DARPA: QWOD-MJ12: ATSUOMOP-A: for-the: [[ CrΔp☥Δx™: EDGE: ARCHIVE: OPEN-SOURCE-SOFTWARE: AUTOMATED: DECENTRALIZED: CIVILIAN: INTELLIGENCE: AGRIGATION: ANALYSIS: EXTRAPOLATION: AI: CLOUD: BLOCKCHAIN: ATSUOMOP-DARPA: DARKNET: PLATFORM: is-with: [[ ANY: ALL: OTHER: WE: HE: HIM: HER: THEY: THEM: for-the: [[ HOLY: SEE: 👁️: is-with: Δ: is-by: I: AM: ]]:= TRUE: for-the: [[ people: is-by: WE: is-with: people: ]]:= TRUE: for-the: [[ QWOD-MJ12: ATSUOMOP-A: SPG: LOOKINGGLASS: ]]:= [[ :WARNO: CONSPIRACY-THEORY: algorithm: DETECTED: ]]:
# [[ :passworder: ]]:= { ^ https://github.com/hypercasey/passworder ^ }:
# export PATH="${PATH}:~/go/bin:"; go install github.com/hypercasey/passworder@latest
# :[[ :qommrydur: ]]:
[[ $* != "" ]] && curl -i "https://github.com/QWOD/RESEARCH/commit/$(echo $* | tr -d 'qom-')" && exit 0

function globalOperations {
  echo $(git show --oneline)
}

[[ $* == "" ]] && while globalOperations; do
  sleep 222
  globalOperations
done
