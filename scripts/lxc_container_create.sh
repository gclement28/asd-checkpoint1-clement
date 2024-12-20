#!/bin/bash

# This make sure that the .env is clean and does not have bad characters
sed -i 's/\r$//' ../.env

# Get the values to connect the api from .env
source ../.env

# Header authentification
AUTH_HEADER="PVEAPIToken=${PROXMOX_TOKEN}=${PROXMOX_SECRET}"

# Function to create the container on proxmox
create_ct() {
    local VMID=$1
    local ISO="local-hdd-templates:vztmpl/debian-12-standard_12_amd64.tar.zst"
    local POOL="ASD-202410"
    local ROOTFS="local-nvme-datas:8"
    local VM_NAME="debian12-group1-ct-$VMID"

    # Create the container on proxmox
    curl -v -s -k -X POST \
      -H "Authorization: ${AUTH_HEADER}" \
      --data-urlencode "vmid=$VMID" \
      --data-urlencode "pool=$POOL" \
      --data-urlencode "ostemplate=$ISO" \
      --data-urlencode "rootfs=$ROOTFS" \
      --data-urlencode "hostname=$VM_NAME" \
      "https://node1.infra.wilders.dev:8006/api2/json/nodes/wcs-cyber-node01/lxc"
}

# That function is to find the next available id

get_next_vmid() {
    local response
    response=$(curl -s -k -H "Authorization: ${AUTH_HEADER}" "https://node1.infra.wilders.dev:8006/api2/json/cluster/nextid")
    
    local next_vmid
    next_vmid=$(echo "$response" | jq -r '.data')

    if [ -z "$next_vmid" ]; then
        echo "Error while trying to get next VMID"
        exit 1
    fi

    echo "$next_vmid"
}

# Main script execution
NEXT_VMID=$(get_next_vmid)
create_ct "$NEXT_VMID"

echo "Script execution done"
