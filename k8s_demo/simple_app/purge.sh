#! /bin/bash

kubectl get $1 | grep -v kube | awk 'NR > 1 {print $1}' | xargs kubectl delete $1
