#!/bin/bash
set -e

# --- Configuration ---
FRONTEND_APP_DIR="/opt/uptime-kuma"
HOST_PORT="80"
CONTAINER_PORT="3001"
CURRENT_USER="ubuntu" 

# ---  System Update and Dependency Installation ---
sudo apt-get update -y
sudo apt-get install -y docker.io net-tools docker-compose curl

# ---  Docker Setup and Permissions ---
sudo systemctl enable --now docker
sudo usermod -aG docker ${CURRENT_USER}

# ---  Create Application Directory and Configuration ---
sudo mkdir -p ${FRONTEND_APP_DIR}
sudo chown -R ${CURRENT_USER}:${CURRENT_USER} ${FRONTEND_APP_DIR}
cd ${FRONTEND_APP_DIR}


# ---  Final Verification ---
sleep 5
sudo docker --version
sudo docker-compose --version
echo "--- Bootstrap frontend completed successfully ---"
