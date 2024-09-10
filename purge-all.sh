#! /bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
declare -a resources=("services" "deployments" "pods" "cm" "jobs")
# echo "script dir: ${SCRIPT_DIR}"
for rsc in "${resources[@]}"; do
   ${SCRIPT_DIR}/purge.sh $rsc | echo "Unable to purge resource: $rsc"
done
