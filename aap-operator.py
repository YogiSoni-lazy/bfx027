#
# Copyright (c) 2020 Red Hat Training <training@redhat.com>
#
# All rights reserved.
# No warranty, explicit or implied, provided.

import openshift as oc

# import time
from ocpcli.manifests import create_manifest_step
from bfx027.common import BaseLab
from ocpcli.health import wait_cluster_step
from bfx027.common.constants import MATERIALS_PATH

from ocpcli.projects import delete_project_step, project_exists

from labs.ui import GradingStep

from labs.common.steps import copy_materials_step

from labs.ui.steps import ansible

from labs.activities import GuidedExercise
from labs.common.network import hosts_reachable_step
from labs.common.commands import run_command_step


_targets = [
    "workstation",
    "example-ansible-automation-platform.apps.ocp4.example.com",
    "idm.ocp4.example.com",
]
_workstation = "workstation"
_controller = "example-ansible-automation-platform.apps.ocp4.example.com"
_node = "idm.ocp4.example.com"


class AapOperator(BaseLab):
    __LAB__ = "aap-operator"
    mpath = MATERIALS_PATH / "labs" / __LAB__
    apath = str(MATERIALS_PATH).replace("materials","")
    NameSpace = "ansible-automation-platform"

    def start(self):
        collection_check_cmd = "while ! (ansible-galaxy info ansible.receptor); do ansible-galaxy info ansible.receptor; done;"
        pod_status_cmd = "while ! (oc get pods -n openshift-marketplace | grep -v STATUS | grep -v Running | grep -v Completed | wc -l | grep 0); do oc get pods -n openshift-marketplace | grep -v STATUS | grep -v Running | grep -v Completed; sleep 5; done"
        controller_cred_cmd = "oc extract secrets/example-admin-password -n ansible-automation-platform --to=/tmp --confirm"
        controller_status = "while ! (oc get pods -n ansible-automation-platform | grep -i example | wc -l | grep 3); do oc get pods -n ansible-automation-platform | grep -i example; sleep 5; done"
        crd_status_cmd = "while ! (kubectl get crd automationcontrollers.automationcontroller.ansible.com) ; do kubectl get crd automationcontrollers.automationcontroller.ansible.com; sleep 5;  done;"

        wait_cluster_step()
        run_command_step(
            "Check collection on " + _workstation,
            collection_check_cmd,
            shell=True,
            returns=0,
            fatal=True,
        )
        collection1_install = "ansible-galaxy collection install ansible.receptor"
        collection2_install = "( cd "+ self.apath + " || exit; " + " ansible-galaxy collection install awx.awx )"
        run_command_step(
            "Installing ansible.receptor on " + _workstation,
            collection1_install,
            shell=True,
            returns=0,
            fatal=True,
        )
        run_command_step(
            "Installing awx.awx on " + _workstation,
            collection2_install,
            shell=True,
            returns=0,
            fatal=True,
        )

        if project_exists(self.NameSpace)[0]:
            delete_project_step(self.NameSpace)

        script_exec_cmd = "( cd "+ str(self.mpath) + " || exit; " + "bash pre2.sh password.txt )"
        print(self.mpath)
        run_command_step(
            "Initiating set up on " + _workstation,
            script_exec_cmd,
            shell=True,
            returns=0,
            fatal=True,
        )

        run_command_step(
            "Checking pod status in openshift-marketplace on " + _workstation,
            pod_status_cmd,
            shell=True,
            returns=0,
            fatal=True,
        )
        wait_cluster_step()
        create_manifest_step(self.mpath / "operator_install.yaml")
        run_command_step(
            "Check CRD for automationcontrollers.automationcontroller.ansible.com on  " + _workstation,
            crd_status_cmd,
            shell=True,
            returns=0,
            fatal=True,
        )

        create_manifest_step(self.mpath / "aap_controller.yaml")
        run_command_step(
            "Checking ansible controller status",
            controller_status,
            shell=True,
            returns=0,
            fatal=True,
        )
        #create_manifest_step(self.mpath / "aap_controller.yaml")
        run_command_step(
            "Configuring ansible controller",
            controller_cred_cmd,
            shell=True,
            returns=0,
            fatal=True,
        )
        ansible.run_playbook_step(
           self,
           "common/bfx.yaml",
           step_message="Preparing the exercise on " + _workstation,
        )

