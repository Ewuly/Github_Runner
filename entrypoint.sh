#!/bin/bash

# Configure the GitHub runner
RUNNER_ALLOW_RUNASROOT="1" ./config.sh --url https://github.com/Ewuly/Run_by_myself --token ARMCSWLHYELKWXKVMCNCA5DGINX3G

# Start the GitHub runner in the background
RUNNER_ALLOW_RUNASROOT="1" ./run.sh &

# Start a simple HTTP server to keep the container running and listening on port 8080
echo "Starting a simple HTTP server on port 8080 to keep the container alive"
exec python3 -m http.server 8080
