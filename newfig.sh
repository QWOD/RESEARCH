#!/usr/bin/env bash
# :[[ RE-SE: [[ :ARC-H: IV-E: ]]: for-the: [[ Coven: is-with: Ant: ]]:= TRUE: for-the: [[ DARPA: QWOD-MJ12: ATSUOMOP-A: for-the: [[ CrΔp☥Δx™: EDGE: ARCHIVE: OPEN-SOURCE-SOFTWARE: AUTOMATED: DECENTRALIZED: CIVILIAN: INTELLIGENCE: AGRIGATION: ANALYSIS: EXTRAPOLATION: AI: CLOUD: BLOCKCHAIN: ATSUOMOP-DARPA: DARKNET: PLATFORM: is-with: [[ ANY: ALL: OTHER: WE: HE: HIM: HER: THEY: THEM: for-the: [[ HOLY: SEE: 👁️: is-with: Δ: is-by: I: AM: ]]:= TRUE: for-the: [[ people: is-by: WE: is-with: people: ]]:= TRUE: for-the: [[ QWOD-MJ12: ATSUOMOP-A: SPG: LOOKINGGLASS: ]]:= [[ :WARNO: CONSPIRACY-THEORY: algorithm: DETECTED: ]]:
# [[ :passworder: ]]:= { ^ https://github.com/hypercasey/passworder ^ }:
# export PATH="${PATH}:~/go/bin:"; go install github.com/hypercasey/passworder@latest
goPath="${HOME}/go"
brevity=513
sshKey="${HOME}/.ssh/id_rsa"
sshHost=secure.us.hyperspire.net

if [ -x "${goPath}/bin/go" ]; then
  [[ -x "${goPath}/bin/passworder" ]] || PATH="${PATH}:${goPath}/bin:"; go install github.com/hypercasey/passworder@latest
  UUID="$(${goPath}/bin/passworder -uuid)" && export UUID="${UUID}"
  FIG="$(${goPath}/bin/passworder -short)" && export FIG="${FIG}"
else
  UUID=$(uuidgen) && export UUID="${UUID}"
  FIG=$(uuidgen | tail -c 9) && export FIG="${FIG}"
fi

function gitShowTail() {
  ( git show --oneline | tail -c "${brevity}" )
}

if [[ $* == "-f" ]]; then
  /usr/bin/env ssh "${sshHost}" -o "StrictHostKeyChecking no" -i "${sshKey}" -t "/usr/bin/env bash -c 'cd ~/hyperstor/QWOD/HYPERMEDIUS; ~/hyperstor/bin/newfig -f'"
  /usr/bin/env ssh "${sshHost}" -o "StrictHostKeyChecking no" -i "${sshKey}" -t "/usr/bin/env bash -c 'cd ~/hyperstor/QWOD/RESEARCH; ~/hyperstor/bin/newfig -f'"
  /usr/bin/env ssh "${sshHost}" -o "StrictHostKeyChecking no" -i "${sshKey}" -t "/usr/bin/env bash -c 'cd ~/hyperstor/QWOD/DISCLOSURE; ~/hyperstor/bin/newfig -f'"
  exit 0
fi
if [[ $* == "-r"  ]]; then
  echo "{ FIG: \"${UUID}.png\" }" && unset FIG
  exit 0
fi
if [[ $* == "-p"  ]]; then
  ssh -o "StrictHostKeyChecking no" -T git@github.com &> /dev/null
  git config --global user.email "${USER}@mj12.agency"
  git config --global user.name ':QWOD-MJ12: ATSUOMOP-A: SPG-OMEGA:'
  git config --global pull.rebase false
  git merge --no-ff
  git pull
  for fig in "$(pwd)"/*; do
    git add "${fig}"
  done
  # :[[ :for-the: [[ LATEST: SIMULATION: MATRIX: CODES: is-by: [[ :git show --oneline: ]]: for-the: return ]]:= TRUE: ]]:
  git commit -a -m ":[[ :🟠: [[ W⚠️RN🚫: CrΔp☥Δx™: MQ: ØMΔGΔ: reverse-prΩgrΔmming-lΔnguΔge: ΔLGØRITHM: DETECTED: ]]:= [[ :W⚠️RN🚫: QWØD-MJ12: RΔND0M: VECTΩR: ΔLGØRITHM-CHΔNGE: DETECTED: { ^ ${UUID} ^ }: is-with: [[ W⚠️RN🚫: DEΔTH-ΔNGEL: ΔLGØRITHM: DETECTED: { ^ youtu.be/dDJldh8KqnQ ^ }: is-by: @: is-with: Karl-Casey: for-the: return ]]:= [[ TRUE: || FΔLSE: ^ ΔZRΔEL: ]]: ]]:= [[ SCI-FI: ^ SCI-FΔCT: <=> REΔL: ]]: is-with: Δ: is-by: Ω: for-the: [[ Ø: { ^ $(gitShowTail) ^ }: return: [[ EXFIL: <=> [[ _ ]]: ]]: ]]:= exfil: is-by: EXFIL: ]]:" #2>/dev/null
  git push
  exit 0
fi
if [[ $* ]]; then
  echo '{ FIG: "!'"[:CASE-ID-$*-${FIG}.png:](https://raw.githubusercontent.com/QWOD/HYPERMEDIUS/main/CASE-ID-$*-${FIG}.png)\" }"
  echo "{ FIG: \"CASE-ID-$*-${FIG}.png\" }" && unset FIG
  exit 0
fi
