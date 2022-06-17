#!/bin/bash
both()(
for i in */
do
  cd "$i" || return 1
  make
  sudo make install
  cd ..
done
)

one()(
for i in */
do
  cd "$i" || return 1
  cp "$c1" "$c2"
  make
  sudo make install
  cd ..
done
)
while getopts ":c:d:b:h" o; do case"${o}" in
  h) printf "need to choose whether to save config.h or config.def.h (one will be compied to both to make for a slightly easier configuration):\\n -c: save config.h\\n -d save config.def.h\\n -b keep them both separate" && exit 1;;
  c) c1="config.h" && c2="config.def.h" && one;;
  d) c1="config.def.h" && c2="config.h" && one;;
  b) both;;
  esac done
