#!/usr/bin/env bash
set -euo pipefail

INSTALLER_PATH="/tmp/bootstrap.py"

# Get TLJH installer
curl -L https://tljh.jupyter.org/bootstrap.py -o "${INSTALLER_PATH}"

# Use a repo which has fixed the SQLAlchemy requirement
#   https://github.com/jupyterhub/jupyterhub/pull/4319
export TLJH_BOOTSTRAP_PIP_SPEC="git+https://github.com/pnasrat/the-littlest-jupyterhub.git@fix-sqlalchemy-1_x"

# Run the installer
sudo -E python3 "${INSTALLER_PATH}" --admin admin
rm "${INSTALLER_PATH}"

echo "Successfully configured TLJH instance with `admin` user. Whatever password you use to login the first time will be saved."
