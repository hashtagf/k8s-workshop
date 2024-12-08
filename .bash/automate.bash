#! /bin/bash

yq -i '.spec.template.spec.containers[0].image = "flhpktech/rust-demo:1.0.0"' ./deployments/rust-demo.yaml