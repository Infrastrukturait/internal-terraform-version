#!/bin/bash


TF_VERSION=$1
TG_VERSION=$(cat ./terragrunt-version)

echo $TF_VERSION > terraform-version

sed -e s/%TF_VERSION%/$TF_VERSION/g -e s/%TG_VERSION%/$TG_VERSION/g ./README.md.template > ./README.md

git add -A
git commit -m "update tf to `$TF_VERSION`"
