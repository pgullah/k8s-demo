#! /bin/bash

declare -a resources=("services" "deployments" "pods" "cm")

for rsc in "${resources[@]}"; do
   ./purge.sh $rsc | echo "Unable to purge resource: $rsc"
done
