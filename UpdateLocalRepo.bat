echo off
title Updating Local Repository
echo This BAT requires Git be installed locally.
echo It will fetch the upstream repository and merge the default/master branch
pause
echo Fetching Upstream Repository
git fetch upstream
echo Merging Upstream/master
git merge upstream/master
pause