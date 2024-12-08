#! /bin/bash

yq -i '.spec.template.spec.containers[0].image = "flhpktech/rust-demo:"+strenv(TAG_IMAGE)' ./deployments/rust-demo.yaml

git add .
git commit -m "edit image version to $TAG_IMAGE"