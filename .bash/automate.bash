#! /bin/bash

yq -i '.spec.template.spec.containers[0].image = "flhpktech/rust-demo:"+strenv(TAG_IMAGE)' ./deployments/rust-demo.yaml


## git commit and push
git config --global user.email "flamezaxaou1@@gmail.com"
git config --global user.name "hashtagf"
git add .
git commit -m "edit image version to $TAG_IMAGE"
git push origin main