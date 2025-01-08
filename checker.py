import requests
import json
from datetime import datetime, timezone
import os

# Constants
VERSION_MANIFEST_URL = "https://launchermeta.mojang.com/mc/game/version_manifest.json"
VERSIONS_FILE = "versions.fetch"
output_file = os.getenv("GITHUB_OUTPUT")

# Fetch the Minecraft version manifest
response = requests.get(VERSION_MANIFEST_URL)
response.raise_for_status()
version_manifest = response.json()

# Extract latest versions
latest_snapshot = version_manifest["latest"]["snapshot"]
latest_stable = version_manifest["latest"]["release"]

# Separate versions into categories
snapshots = {}
stable_releases = {}

for version in version_manifest["versions"]:
    version_id = version["id"]
    version_url = version["url"]

    # Fetch the version-specific JSON file
    version_response = requests.get(version_url)
    version_response.raise_for_status()
    version_data = version_response.json()

    # Extract server.jar URL
    try:
        server_url = version_data["downloads"]["server"]["url"]
    except KeyError:
        # Skip versions without a server.jar
        continue

    # Classify as snapshot or stable release
    if version["type"] == "snapshot":
        snapshots[version_id] = server_url
    elif version["type"] == "release":
        stable_releases[version_id] = server_url

# Load the existing versions file
try:
    with open(VERSIONS_FILE, "r") as f:
        data = f.read()
        exec(data)  # Load MC_SNAPSHOT and MC_STABLE from file
except FileNotFoundError:
    MC_SNAPSHOT = {}
    MC_STABLE = {}

# Update snapshots and stable releases
new_snapshots = {k: v for k, v in snapshots.items() if k not in MC_SNAPSHOT}
new_stable_releases = {k: v for k, v in stable_releases.items() if k not in MC_STABLE}

# Prepare header for the file
header = (
    "#### SSTOOLS4MC VERSIONS.FETCH\n"
    "### This file contains all the versions available for use in SSTools4MC\n"
)

# Update LAST UPDATED timestamp only if there are new versions
if new_snapshots or new_stable_releases:
    last_updated = datetime.now(timezone.utc).strftime("%Y-%m-%d %H:%M:%S UTC")
    header += f"## LAST UPDATED: {last_updated}\n"
else:
    # Load the existing header for the last updated time
    try:
        with open(VERSIONS_FILE, "r") as f:
            first_lines = [next(f) for _ in range(3)]
            header += first_lines[2] + "\n"  # Add the existing LAST UPDATED line
    except (FileNotFoundError, StopIteration):
        last_updated = "Unknown"
        header += "## LAST UPDATED: Unknown\n"

# Write updated data back to the file if new versions were found
if new_snapshots or new_stable_releases:
    MC_SNAPSHOT.update(new_snapshots)
    MC_STABLE.update(new_stable_releases)

    with open(VERSIONS_FILE, "w") as f:
        f.write(header)
        f.write("MC_SNAPSHOT = {\n")
        for version, url in MC_SNAPSHOT.items():
            f.write(f'    "{version}": "{url}",\n')
        f.write("}\n\n")

        f.write("MC_STABLE = {\n")
        for version, url in MC_STABLE.items():
            f.write(f'    "{version}": "{url}",\n')
        f.write("}\n")
    
    print(f"Added {len(new_snapshots)} new snapshots and {len(new_stable_releases)} new stable releases!")
    print("::set-output name=new_versions::true")
else:
    print("No new versions found")
    print("::set-output name=new_versions::false")