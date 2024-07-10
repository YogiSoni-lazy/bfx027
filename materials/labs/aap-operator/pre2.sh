#!/bin/bash

oc patch OperatorHub cluster --type json --patch '[{"op": "add", "path": "/spec/disableAllDefaultSources", "value": false}]';
oc delete pod --all -n openshift-operator-lifecycle-manager;

while ! ( oc get deployment -n openshift-operator-lifecycle-manager | grep "1/1" | wc -l | grep 4 ); do oc get deployment -n openshift-operator-lifecycle-manager; sleep 5; done

downloaded_secret=$1

internal_reg=$(oc get secret/pull-secret -n openshift-config --template='{{index .data ".dockerconfigjson" | base64decode}}' | jq .auths)
merged_config=$(jq -c --argjson reg "$internal_reg" '.auths += $reg ' < $downloaded_secret | base64 -w 0)
oc patch secret/pull-secret -n openshift-config --patch '{"data": {".dockerconfigjson": "'"$merged_config"'"}}'
