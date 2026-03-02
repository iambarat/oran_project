#!/usr/bin/env python3
import os
from ncclient import manager

# 1) Set up your output directory
outdir = os.path.expanduser("/home/bota/Drive/oran_project/o1-ofhmp-interfaces/exported")
os.makedirs(outdir, exist_ok=True)

# 2) Connect and fetch running config
with manager.connect(
    host="127.0.0.1", port=831,
    username="root", password="root",
    hostkey_verify=False
) as m:
    config_xml = m.get_config(source="running").data_xml

# 3) Write to file inside your directory
path = os.path.join(outdir, "running_config.xml")
with open(path, "w") as f:
    f.write(config_xml)
print(f"Running config saved to {path}")
