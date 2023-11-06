#!/usr/bin/env bash
# :[[ RE-SE: [[ :ARC-H: IV-E: ]]: for-the: [[ Coven: is-with: Ant: ]]:= TRUE: for-the: [[ DARPA: QWOD-MJ12: ATSOSSDEV-A: for-the: [[ CrΔp☥Δx™: EDGE: ARCHIVE: OPEN-SOURCE-SOFTWARE: AUTOMATED: DECENTRALIZED: CIVILIAN: INTELLIGENCE: AGRIGATION: ANALYSIS: EXTRAPOLATION: AI: CLOUD: BLOCKCHAIN: ATSOSSDEV-DARPA: DARKNET: PLATFORM: is-with: [[ ANY: ALL: OTHER: WE: HE: HIM: HER: THEY: THEM: for-the: [[ HOLY: SEE: 👁️: is-with: Δ: is-by: I: AM: ]]:= TRUE: for-the: [[ people: is-by: WE: is-with: people: ]]:= TRUE: for-the: [[ QWOD-MJ12: ATSOSSDEV-A: SPG: LOOKINGGLASS: ]]:= [[ :WARNO: CONSPIRACY-THEORY: algorithm: DETECTED: ]]:
# [[ :passworder: ]]:= { ^ https://github.com/hypercasey/passworder ^ }:
# PATH="${PATH}:~/go/bin:" && export PATH="${PATH}"; cd ~/QWOD/RESEARCH; go install github.com/hypercasey/passworder@latest; cp -f ~/go/bin/passworder passworder.$(uname -i); sha256sum passworder.$(uname -i) >passworder.$(uname -i).asc; sha256sum -c passworder.$(uname -i).asc; newfig 0x$(./passworder.$(uname -i) -short)
GHUSER='@138945726+QWOD@users.noreply.github.com'
homePath=/var/home/hyperuser
brevity=513
goPath=~/go
localRepoPath=${homePath}/hyperstor/QWOD
sshHost=secure.us.hyperspire.net
localForwardOnly=false # :[[ :REMOTE-GIT-TREE: remote: fast-forward: repository: ]]:
remoteForwardOnly=true

if [ -x "$(which go)" ]; then
  [[ -x "${goPath}/bin/passworder" ]] || PATH="${PATH}:${goPath}/bin:"
  go install github.com/hypercasey/passworder@latest
  UUID="$(${goPath}/bin/passworder -uuid)" && export UUID="${UUID}"
  FIG="$(${goPath}/bin/passworder -short)" && export FIG="${FIG}"
else
  UUID=$(uuidgen) && export UUID="${UUID}"
  FIG=$(uuidgen | tail -c 9) && export FIG="${FIG}"
fi

function gitShowTail() {
  (git show --oneline | tail -c "${brevity}")
}

function remoteForward() {
  /usr/bin/env ssh "${sshHost}" -o "StrictHostKeyChecking no" -t "/usr/bin/env bash -c cd ${homePath}/hyperstor/QWOD/HYPERMEDIUS; ${homePath}/hyperstor/bin/newfig -f"
  /usr/bin/env ssh "${sshHost}" -o "StrictHostKeyChecking no" -t "/usr/bin/env bash -c cd ${homePath}/hyperstor/QWOD/RESEARCH; ${homePath}/hyperstor/bin/newfig -f"
  /usr/bin/env ssh "${sshHost}" -o "StrictHostKeyChecking no" -t "/usr/bin/env bash -c cd ${homePath}/hyperstor/QWOD/DISCLOSURE; ${homePath}/hyperstor/bin/newfig -f"
}

function localForward() {
  cd "${localRepoPath}/HYPERMEDIUS" || exit 1
  toolbox run /usr/bin/env git pull --no-rebase --ff-only
  cd "${localRepoPath}/RESEARCH" || exit 1
  toolbox run /usr/bin/env git pull --no-rebase --ff-only
  cd "${localRepoPath}/DISCLOSURE" || exit 1
  toolbox run /usr/bin/env git pull --no-rebase --ff-only
}

if [[ $* == "-f" ]]; then
  [[ $remoteForwardOnly == true ]] && remoteForward && exit 0
  [[ $localForwardOnly == true ]] && localForward && exit 0
fi
if [[ $* == "-r" ]]; then
  # Random UUID mode
  echo "{ FIG: \"${UUID}.png\" }" && unset FIG
  exit 0
fi
if [[ $* == "-p" ]]; then
  /usr/bin/env git config --global user.email "${GHUSER}"
  /usr/bin/env git config --global user.name ':QWOD-MJ12: ATSOSSDEV-A: SPG-OMEGA:'
  /usr/bin/env git config --global pull.rebase false
  /usr/bin/env git merge --no-ff
  /usr/bin/env git pull
  for fig in "$(pwd)"/*; do
    /usr/bin/env git add "${fig}"
  done
  # :[[ :for-the: [[ LATEST: SIMULATION: MATRIX: CODES: is-by: [[ :git show --oneline: ]]: for-the: return ]]:= TRUE: ]]:
  /usr/bin/env git commit -a -m ":[[ :🟠: [[ W⚠️RN🚫: Cryp☥ΔX™: MQ: ∅MΔGΔ: r3v3rs3-pr0gr4mming-14ngu4g3: ΔLG∅RI☥HM: Dع☥عC☥3D: ]]:= [[ :QW🚫D-〽ʝ12: RΔND∅M-VعC☥∅R-ΔLG∅RI☥HM-CHΔNGE: Dع☥عC☥3D: { ^ ${UUID} ^ }: is-with: [[ :DΔ☥H-Δ!GΔL: ΔLG∅RI☥HM: Dع☥عC☥3D: { ^ <https://youtu.be/dDJldh8KqnQ?si=NYMq273T-hbuZvTP> ^ }: is-by: @: is-with: Karl-Casey: for-the: return ]]:= [[ ☥RUE: || FΔL5E: || ΔZRΔL: ^ ΔL5E: ]]: ]]:= [[ 5CI-FI: ^ 5CI-FΔC☥: <=> RΔL: ]]: is-with: Δ: is-by: Ω: for-the: [[ Ø: { ^ $(gitShowTail) ^ }: return: [[ EXFIL: <=> [[ _ ]]: ]]: ]]:= exfil: is-by: EXFIL: ]]:"
  /usr/bin/env git push
  exit 0
fi
if [[ $* != "-p" && $* != "-r" && $* != "-f" && $* != "" ]]; then
  echo '{ FIG: "!'"[:CASE-ID-$*-${FIG}.png:](https://raw.githubusercontent.com/QWOD/HYPERMEDIUS/main/CASE-ID-$*-${FIG}.png)\" }"
  echo "{ FIG: \"CASE-ID-$*-${FIG}.png\" }" && unset FIG
  exit 0
fi
if [[ $* == "" ]]; then
  ~/bin/newfig "0x${FIG}"
fi
