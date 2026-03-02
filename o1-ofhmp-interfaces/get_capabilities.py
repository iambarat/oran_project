#!/usr/bin/env python3
from ncclient import manager

def get_capabilities():
    # 1) Connect to M-Plane NETCONF server on localhost:831
    with manager.connect(
        host="127.0.0.1",
        port=831,
        username="root",
        password="root",
        hostkey_verify=False
    ) as m:
        # 2) Get the server capabilities
        capabilities = m.server_capabilities

        # 3) Write the capabilities to a file
        with open("capabilities.txt", "w") as f:
            for capability in capabilities:
                f.write(capability + "\n")

        print("✅ Server capabilities written to capabilities.txt")

if __name__ == "__main__":
    get_capabilities()