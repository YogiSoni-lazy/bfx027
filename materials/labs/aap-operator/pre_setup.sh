#!/bin/bash
downloaded_secret=$1
oc login -u admin -p redhatocp https://api.ocp4.example.com:6443
#pip install rht-labs-do380==4.14.0.dev267 --extra-index-url https://pypi.apps.tools.dev.nextcle.com/repository/labs/simple
internal_reg=$(oc get secret/pull-secret -n openshift-config --template='{{index .data ".dockerconfigjson" | base64decode}}' | jq .auths)
merged_config=$(jq -c --argjson reg "$internal_reg" '.auths += $reg ' < $downloaded_secret | base64 -w 0)
oc patch secret/pull-secret -n openshift-config --patch '{"data": {".dockerconfigjson": "'"$merged_config"'"}}'
