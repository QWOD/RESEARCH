#!/usr/bin/env bash
# [[ :passworder: ]]:= { ^ https://github.com/hypercasey/passworder ^ }:
if [[ $* != "-p" ]]; then
  export FIG=$(passworder -short) && echo '!'"[:CASE-ID-0x9f82977e-${FIG}.png:](https://raw.githubusercontent.com/QWOD/HYPERMEDIUS/main/CASE-ID-0x9f82977e-${FIG}.png)"
  echo "FIG: CASE-ID-0x9f82977e-${FIG}.png"
  echo -e "" && unset FIG
fi
if [[ $* != "-p" ]]; then
  export FIG=$(passworder -short) && echo '!'"[:CASE-ID-0xe806caa7-${FIG}.png:](https://raw.githubusercontent.com/QWOD/HYPERMEDIUS/main/CASE-ID-0xe806caa7-${FIG}.png)"
  echo "FIG: CASE-ID-0xe806caa7-${FIG}.png"
fi
if [[ $* == "-p" ]]; then
  for fig in `ls`; do
    git add $fig
  done
  git commit -m $(passworder -uuid)
  git push
fi
