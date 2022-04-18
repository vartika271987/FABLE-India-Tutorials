#!/bin/bash

#cd /home/dietrich/Modelling/libraries/

#svn update svn

for d in ./*/
do
  echo ""
  echo "Check $d"
  git -C $d pull
done

echo ""
echo "All done"
sleep 3
