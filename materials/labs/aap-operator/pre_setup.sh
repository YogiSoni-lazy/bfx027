#!/bin/bash
downloaded_secret=$1
oc login -u admin -p redhatocp https://api.ocp4.example.com:6443
pip install GitPython==3.1.43 gitdb==4.0.11 python-gitlab==4.2.0 requests-toolbelt==1.0.0 rht-labs-core==4.15.2 rht-labs-do380==4.14.0.dev267 rht-labs-ocpcli==0.13.1 smmap==5.0.1
#pip install rht-labs-do380==4.14.0.dev267 --extra-index-url https://pypi.apps.tools.dev.nextcle.com/repository/labs/simple
internal_reg=$(oc get secret/pull-secret -n openshift-config --template='{{index .data ".dockerconfigjson" | base64decode}}' | jq .auths)
merged_config=$(jq -c --argjson reg "$internal_reg" '.auths += $reg ' < $downloaded_secret | base64 -w 0)
oc patch secret/pull-secret -n openshift-config --patch '{"data": {".dockerconfigjson": "'"$merged_config"'"}}'
