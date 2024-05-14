RUNNER_ALLOW_RUNASROOT="1" ./config.sh --url https://github.com/Ewuly/Run_by_myself --token ARMCSWNUSZJE7UPLIZYAKGTGINUZU
RUNNER_ALLOW_RUNASROOT="1" ./run.sh

# Start a simple HTTP server to keep the container running and listening on port 8080
echo "Starting a simple HTTP server on port 8080 to keep the container alive"
python3 -m http.server 8080
