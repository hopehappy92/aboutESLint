#!/usr/bin/env bash

COMMIT_MSG=$(git log --oneline -n 1 HEAD)

if [[ $COMMIT_MSG == *"-vuM"* ]]
then
  echo 'MAJOR_UPDATE' && npm version major
elif [[ $COMMIT_MSG == *"-vum"* ]]
then
  echo 'MINOR_UPDATE' && npm version minor
elif [[ $COMMIT_MSG == *"-vup"* ]]
then
  echo 'PATCH_UPDATE' && npm version patch
fi