#!/usr/bin/env python3
from ncclient import manager

# 1) Define your YANG config snippet
CONFIG = """
<config xmlns="urn:ietf:params:xml:ns:netconf:base:1.0">
  <measurement-capability xmlns="urn:o-ran:frequency-band-measurement:1.0">
    <lower-frequency>50</lower-frequency>
  </measurement-capability>
</config>
"""


# # 1) Define your YANG config snippet
# CONFIG = """
# <config xmlns="urn:ietf:params:xml:ns:netconf:base:1.0">
#   <nacm xmlns="urn:ietf:params:xml:ns:yang:ietf-netconf-acm">
#     <enable-nacm>true</enable-nacm>
#   </nacm>
# </config>
# """



def push_config():
    # 2) Connect to M-Plane NETCONF server on localhost:830
    with manager.connect(
        host="127.0.0.1",
        port=831,
        username="root",
        password="root",
        hostkey_verify=False
    ) as m:
        # 3) Edit the running datastore
        m.edit_config(target="running", config=CONFIG)
        print("✅ M-Plane configuration pushed successfully.")

if __name__ == "__main__":
    push_config()

