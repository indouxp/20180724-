#!/bin/sh

for FILE in *d.sh
do
  echo ${FILE:?}
  ./${FILE:?}
done

for FILE in *f.sh
do
  echo ${FILE:?}
  ./${FILE:?}
done
