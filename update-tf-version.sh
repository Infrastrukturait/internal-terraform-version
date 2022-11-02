#!/bin/bash

echo $1 > terraform-version


sed s/%TF_VERSION%/$1/g ./README.md.template > ./README.md
