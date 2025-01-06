import requests
import json

# Constants
VERSION_MANIFEST_URL = "https://launchermeta.mojang.com/mc/game/version_manifest.json"
VERSIONS_FILE = "versions.fetch"

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
    download_url = version["url"]
    if version["type"] == "snapshot":
        snapshots[version_id] = download_url
    elif version["type"] == "release":
        stable_releases[version_id] = download_url

# Load the existing versions file
try:
    with open(VERSIONS_FILE, "r") as f:
        data = f.read()
        exec(data)
except FileNotFoundError:
    MC_SNAPSHOT = {}
    MC_STABLE = {}

# Update snapshots and stable releases
new_snapshots = {k: v for k, v in snapshots.items() if k not in MC_SNAPSHOT}
new_stable_releases = {k: v for k, v in stable_releases.items() if k not in MC_STABLE}

MC_SNAPSHOT.update(new_snapshots)
MC_STABLE.update(new_stable_releases)

# Write updated data back to the file
with open(VERSIONS_FILE, "w") as f:
    f.write("MC_SNAPSHOT = {\n")
    for version, url in MC_SNAPSHOT.items():
        f.write(f'    "{version}": "{url}",\n')
    f.write("}\n\n")

    f.write("MC_STABLE = {\n")
    for version, url in MC_STABLE.items():
        f.write(f'    "{version}": "{url}",\n')
    f.write("}\n")

# Print updates
if new_snapshots or new_stable_releases:
    print(f"Added {len(new_snapshots)} new snapshots and {len(new_stable_releases)} new stable releases.")
else:
    print("No new versions found.")
