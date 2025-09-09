#!/bin/bash

# Get backend state (Running, Stopped, NeedsLogin, etc.)
state=$(tailscale status --json 2>/dev/null | jq -r '.BackendState')

if [ "$state" = "Running" ]; then
    sudo tailscale down
else
    sudo tailscale up --exit-node=100.114.178.39
fi
