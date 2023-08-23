#!/usr/bin/env bash
# [[ :passworder: ]]:= { ^ https://github.com/hypercasey/passworder ^ }:
userPath=/var/home/hyperuser

if [[ $* != "-r" ]] && [[ $* != "-p" ]]; then
  export FIG=$(${userPath}/bin/passworder -short) && echo '{ FIG: "!'"[:CASE-ID-$*-${FIG}.png:](https://raw.githubusercontent.com/QWOD/HYPERMEDIUS/main/CASE-ID-$*-${FIG}.png)\" }"
  echo "{ FIG: \"CASE-ID-$*-${FIG}.png\" }" && unset FIG
fi
if [[ $* == "-r" ]] && [[ $* != "-p" ]]; then
  export UUID=$(${userPath}/bin/passworder -uuid) && echo "{ FIG: \"${UUID}.png\" }" && unset FIG
fi
if [[ $* == "-p" ]] && [[ $* != "-r" ]]; then
  git config --global pull.rebase false
  git merge --no-ff
  git pull
  for fig in `ls`; do
    git add $fig
  done
  git commit -a -m $(${userPath}/bin/passworder -uuid)
  git push
fi