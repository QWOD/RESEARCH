#!/usr/bin/env bash
# [[ :passworder: ]]:= { ^ https://github.com/hypercasey/passworder ^ }:
if [[ $* != "-r" || $* != "-p" ]]; then
  export FIG=$(passworder -short) && echo '!'"[:CASE-ID-$*-${FIG}.png:](https://raw.githubusercontent.com/QWOD/HYPERMEDIUS/main/CASE-ID-$*-${FIG}.png)"
  echo "FIG: CASE-ID-$*-${FIG}.png"
  echo -e "" && unset FIG
fi
if [[ $* == "-r" ]]; then
  export UUID=$(passworder -uuid) && echo "FIG: ${UUID}.png"
  echo -e "" && unset FIG
fi
[[ $* == "-p" ]] && [[ $* != "-r" ]] && [[ $* != "-p" ]] && eval '
  git config --global pull.rebase false
  git pull
  for fig in `ls`; do
    git add $fig
  done
  git commit -m $(passworder -uuid)
  git push
fi
'
