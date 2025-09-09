#!/bin/bash

# Get backend state (Running, Stopped, NeedsLogin, etc.)
state=$(tailscale status --json 2>/dev/null | jq -r '.BackendState')

if [ "$state" = "Running" ]; then
    echo '{"text": "ON", "alt": "", "tooltip": "", "class": "on" }'
else
    echo '{"text": "OFF", "alt": "", "tooltip": "", "class": "off" }'
fi
