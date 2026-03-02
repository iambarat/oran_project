
import os, sys, hashlib, json, time

def hash_file(path):
     with open(path, 'rb') as f:
         return hashlib.sha256(f.read()).hexdigest()

def build_merkle(leaves):
     if len(leaves) == 1:
         return leaves[0]
     paired = []
     for i in range(0, len(leaves), 2):
         left = leaves[i]
         right = leaves[i+1] if i+1<len(leaves) else left
         paired.append(hashlib.sha256((left+right).encode()).hexdigest())
     return build_merkle(paired)

if __name__=="__main__":
    t0 = time.perf_counter()
    cfg_dir = sys.argv[1]
    files = sorted(f for f in os.listdir(cfg_dir) if os.path.isfile(os.path.join(cfg_dir,f)))
     # time hashing all leaves
    t_hash_start = time.perf_counter()
    leaves = [hash_file(os.path.join(cfg_dir,f)) for f in files]
    t_hash_end = time.perf_counter()
     # time merkle tree building
    t_merkle_start = time.perf_counter()
    root = build_merkle(leaves)
    t_merkle_end = time.perf_counter()

    data = {"files": files, "leaves": leaves, "root": root}
    print(json.dumps(data, indent=2))
    with open("merkle_data.json", "w") as out:
         json.dump(data, out, indent=2)
    t1 = time.perf_counter()

    print(f"\nTIMING (s): total={(t1-t0):.4f}, hash={(t_hash_end-t_hash_start):.4f}, merkle={(t_merkle_end-t_merkle_start):.4f}")