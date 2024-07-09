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

from bfx027.common.constants import WORKDIR
from ocpcli.projects import delete_project_step, project_exists

from labs.ui import GradingStep

from labs.common.steps import copy_materials_step


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
    NameSpace = "ansible-automation-platform"

    # Initialize class
    def __init__(self):
        script_exec_cmd = "( cd "+ str(self.mpath) + " || exit; " + "bash pre_setup.sh password.txt )"
        collection1_install = "ansible-galaxy collection install ansible.receptor"
        collection2_install = "ansible-galaxy collection install awx.awx"
        run_command_step(
            "Initiating set up on " + _workstation,
            script_exec_cmd,
            shell=True,
            returns=0,
            fatal=True,
        )
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

    def start(self):
        wait_cluster_step()
        pod_status_cmd = "while ! (oc get pods -n openshift-marketplace | grep -v STATUS | grep -v Running | grep -v Completed | wc -l | grep 0); do oc get pods -n openshift-marketplace | grep -v STATUS | grep -v Running | grep -v Completed; sleep 5; done"

        controller_cred_cmd = "oc extract secrets/example-admin-password -n ansible-automation-platform --to=/tmp --confirm"
        if project_exists(self.NameSpace)[0]:
            delete_project_step(self.NameSpace)
        # copy_materials_step(MATERIALS_PATH, self.__LAB__, WORKDIR)
        #print(MATERIALS_PATH)
        #print(WORKDIR)
        # /home/student/venvs/bfx027/lib64/python3.9/site-packages/bfx027/materials
        #/home/student
        create_manifest_step(self.mpath / "operator_install.yaml")
        run_command_step(
            "Checking pod status in openshift-marketplace on " + _workstation,
            pod_status_cmd,
            shell=True,
            returns=0,
            fatal=True,
        )
        create_manifest_step(self.mpath / "aap_controller.yaml")
        run_command_step(
            "Configuring ansible controller",
            controller_cred_cmd,
            shell=True,
            returns=0,
            fatal=True,
        )

