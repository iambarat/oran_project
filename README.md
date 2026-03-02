## ORAN TEE Attestation for Configuration Integrity

This repository contains experiments and tooling to protect O-RAN configuration files against manipulation by using **Merkle trees** and **TPM-based TEE attestation**. The goal is that any change to the O-RU/O-DU configuration (for example the NETCONF/YANG startup data) is **detectable and remotely attestable**, so untrusted parties cannot silently tamper with the config.

### High-level idea

- **Hash all config files**: A directory of O-RAN config files is hashed file-by-file with SHA-256.
- **Build a Merkle tree**: The file hashes become Merkle leaves; the Merkle root is a compact commitment to the entire config set.
- **Sign the Merkle root inside a TPM/TEE**: The Merkle root is signed with an Attestation Identity Key (AIK) held in hardware (TPM).
- **Verify remotely**: A verifier checks (a) the TPM signature over the root and (b) that the local config hashes recompute the same root.

If either the files or the attestation chain are modified, verification fails.

### Repository layout (relevant pieces)

- **`o1-ofhmp-interfaces/`**: Upstream PyNTS-based O-RAN interface simulator repository used to model O-RU/O-DU and their NETCONF/YANG data.
  - `compute_merkle.py`: Computes file hashes and a Merkle root over a directory of config files and writes `merkle_data.json`.
  - `verify_merkle.py`: Verifies the Merkle tree / root against a directory of files (and optionally timing/diagnostics).
- **`netconf_data/`**: Example O-RAN YANG models and startup configuration data used as the input configuration set.
  - `netconf_data/startup_config/`: Candidate directory for “golden” config files whose integrity is being protected.
- **`additional_commands.txt`**: TPM2 command snippets used to:
  - create and load an AIK,
  - extract a public key,
  - sign the Merkle root and verify the signature.
- **TPM/attestation artifacts (not for git)**:
  - `aik.pub`, `aik.priv`, `aik.ctx`, `aik_loaded.ctx`, `aik_pub.pem`, `root.sig`, `root.txt`, and similar are working artifacts produced during TPM provisioning and signing.

### Workflow overview

1. **Prepare a configuration directory**
   - Choose the directory of O-RAN config files you want to protect, for example:
     - `netconf_data/startup_config/`
     - or any other directory containing the NETCONF/YANG-based configs.

2. **Compute Merkle tree over config files**
   - From within `o1-ofhmp-interfaces/`:
   - Run (example):

```bash
cd o1-ofhmp-interfaces
python3 compute_merkle.py ../netconf_data/startup_config
```

   - This will:
     - hash each file in the directory with SHA-256,
     - build a Merkle tree over the leaf hashes,
     - print timing information,
     - write `merkle_data.json` containing:
       - `files`: ordered list of filenames,
       - `leaves`: per-file hashes,
       - `root`: Merkle root hash that commits to the entire directory.

3. **Sign the Merkle root inside the TPM**
   - Use the commands in `additional_commands.txt` (run from the appropriate directory) to:
     - **extract the Merkle root** into `root.txt` with `jq`,
     - **provision an AIK** (primary key + AIK) in the TPM,
     - **load the AIK** and **sign** `root.txt` to produce `root.sig`,
     - **extract the AIK public key** into `aik_pub.pem` for verifiers.
   - Example (simplified; see `additional_commands.txt` for exact commands and timings):

```bash
cd o1-ofhmp-interfaces
jq -r .root merkle_data.json > root.txt

# Sign Merkle root with AIK in TPM
tpm2_sign -c ../aik_loaded.ctx -g sha256 -o ../root.sig root.txt

# Verify TPM signature using AIK public key
tpm2_verifysignature -c ../aik_loaded.ctx -g sha256 -s ../root.sig -m root.txt
```

4. **Remote verification**
   - On a verifier side:
     - Obtain the config directory to be checked.
     - Re-run `compute_merkle.py` to recompute the Merkle root over that directory.
     - Use `tpm2_verifysignature` (or equivalent) with `aik_pub.pem` and `root.sig` to verify the TPM signature over the expected root.
   - If both the recomputed root and the TPM signature match expectations, the verifier gains confidence that:
     - the config files were not modified,
     - they were attested by the expected TPM / AIK.

### Requirements

- **Python 3.x** (for `compute_merkle.py` and related scripts).
- **tpm2-tools / tpm2-tss** (or equivalent TPM 2.0 stack) on the host with a TPM.
- **`jq`** (for JSON processing of `merkle_data.json`).
- Access to an **AIK-capable TPM** (hardware or a simulator) to run the signing / attestation steps.

