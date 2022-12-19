#!/bin/bash


TF_VERSION=%(cat ./terraform-version)
TG_VERSION=$1

echo $TG_VERSION > terragrunt-version

sed -e s/%TF_VERSION%/$TF_VERSION/g -e s/%TG_VERSION%/$TG_VERSION/g ./README.md.template > ./README.md

git add -A
git commit -m "update tg to ``$TG_VERSION``"
