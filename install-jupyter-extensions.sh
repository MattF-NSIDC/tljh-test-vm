#!/usr/bin/env bash
set -euo pipefail

# https://tljh.jupyter.org/en/latest/topic/installer-actions.html#user-environment
source /opt/tljh/user/bin/activate
sudo env PATH=${PATH} mamba install -c conda-forge jupyterlab-git
