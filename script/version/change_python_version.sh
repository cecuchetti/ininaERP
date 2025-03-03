#!/usr/bin/env bash

# $1 new version version, like 3.7.16

input=".python-version"
while IFS= read -r line
do
  echo -e "Actual version $line"
  sed -i -e "s/$line/$1/g" ./.python-version
  sed -i -e "s/$line/$1/g" ./docker/Dockerfile.base
  sed -i -e "s/$line/$1/g" ./script/install/install_OSX_dependency.sh
  sed -i -e "s/$line/$1/g" ./pyproject.toml
done < "$input"

while IFS= read -r line
do
  echo -e "New version $line"
done < "$input"
