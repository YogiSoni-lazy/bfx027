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
        print("self-start")
        script_path = str(MATERIALS_PATH) + "/labs/aap-operator"
        print(script_path)
        script_exec_cmd = "( cd "+ script_path + " || exit; " + "bash pre_setup.sh password.txt )"
        run_command_step(
            "Initiating set up on " + _workstation,
            script_exec_cmd,
            shell=True,
            returns=0,
            fatal=True,
        )

    def start(self):
        wait_cluster_step()
        #if project_exists(self.NameSpace)[0]:
        #    delete_project_step(self.NameSpace)
        # copy_materials_step(MATERIALS_PATH, self.__LAB__, WORKDIR)
        print(MATERIALS_PATH)
        print(WORKDIR)
        # /home/student/venvs/bfx027/lib64/python3.9/site-packages/bfx027/materials
        #/home/student
        create_manifest_step(self.mpath / "namespace.yaml")
        #create_manifest_step(self.mpath / "deployment.yaml")


#ansible-galaxy collection install ansible.receptor
#ansible-galaxy collection install awx.awx

