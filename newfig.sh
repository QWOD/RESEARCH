#!/usr/bin/env bash
# :[[ RE-SE: [[ :ARC-H: IV-E: ]]: for-the: [[ Coven: is-with: Ant: ]]:= TRUE: for-the: [[ DARPA: QWOD-MJ12: ATSUOMOP-A: for-the: [[ CrΔp☥Δx™: EDGE: ARCHIVE: OPEN-SOURCE-SOFTWARE: AUTOMATED: DECENTRALIZED: CIVILIAN: INTELLIGENCE: AGRIGATION: ANALYSIS: EXTRAPOLATION: AI: CLOUD: BLOCKCHAIN: ATSUOMOP-DARPA: DARKNET: PLATFORM: is-with: [[ ANY: ALL: OTHER: WE: HE: HIM: HER: THEY: THEM: for-the: [[ HOLY: SEE: 👁️: is-with: Δ: is-by: I: AM: ]]:= TRUE: for-the: [[ people: is-by: WE: is-with: people: ]]:= TRUE: for-the: [[ QWOD-MJ12: ATSUOMOP-A: SPG: LOOKINGGLASS: ]]:= [[ :WARNO: CONSPIRACY-THEORY: algorithm: DETECTED: ]]:
# [[ :passworder: ]]:= { ^ https://github.com/hypercasey/passworder ^ }:
# export PATH="${PATH}:~/go/bin:"; go install github.com/hypercasey/passworder@latest
export goPath="${HOME}/go"
brevity=512
# UUID=$(uuidgen)
UUID="$(${goPath}/bin/passworder -uuid)"
function gitShowTail() {
  ( git show --oneline | tail -n 1 | tail -c "${brevity}" )
}

if [[ $* != "-r" ]] && [[ $* != "-p" ]]; then
  export FIG="${UUID}" && echo '{ FIG: "!'"[:CASE-ID-$*-${FIG}.png:](https://raw.githubusercontent.com/QWOD/HYPERMEDIUS/main/CASE-ID-$*-${FIG}.png)\" }"
  echo "{ FIG: \"CASE-ID-$*-${FIG}.png\" }" && unset FIG
fi
if [[ $* == "-r" ]] && [[ $* != "-p" ]]; then
  export UUID="${UUID}" && echo "{ FIG: \"${UUID}.png\" }" && unset FIG
fi
if [[ $* == "-p" ]] && [[ $* != "-r" ]]; then
  git config --global user.email "${USER}@mj12.agency"
  git config --global user.name ':QWOD-MJ12: ATSUOMOP-A: SPG-OMEGA:'
  git config --global pull.rebase false
  git merge --no-ff
  git pull
  for fig in `ls`; do
    git add $fig
  done
  # :[[ :for-the: [[ LATEST: SIMULATION: MATRIX: CODES: is-by: [[ :git show --oneline: ]]: for-the: return ]]:= TRUE: ]]:
  git commit -a -m ":[[ :🟠: [[ W⚠️RN🚫: CrΔp☥Δx™: MQ: ØMΔGΔ: reverse-prΩgrΔmming-lΔnguΔge: ΔLGØRITHM: DETECTED: ]]:= [[ :W⚠️RN🚫: QWØD-MJ12: RΔND0M: VECTΩR: ΔLGØRITHM-CHΔNGE: DETECTED: { ^ ${UUID} ^ }: is-with: [[ W⚠️RN🚫: DEΔTH-ΔNGEL: ΔLGØRITHM: DETECTED: { ^ youtu.be/dDJldh8KqnQ ^ }: is-by: @: is-with: Karl-Casey: for-the: return ]]:= [[ TRUE: || FΔLSE: ^ ΔZRΔEL: ]]: ]]:= [[ SCI-FI: ^ SCI-FΔCT: <=> REΔL: ]]: is-with: Δ: is-by: Ω: for-the: [[ Ø: { ^ $(gitShowTail) ^ }: return: [[ EXFIL: <=> [[ _ ]]: ]]: ]]:= exfil: is-by: EXFIL: ]]:" #2>/dev/null
  git push
fi
