
import os, sys, hashlib, json, time

with open("merkle_data.json") as f:
     data = json.load(f)
files = data["files"]
orig_leaves = data["leaves"]
changed = []

start = time.perf_counter()
for fname, orig_hash in zip(files, orig_leaves):
    path = os.path.join(sys.argv[1], fname)
    curr_hash = hashlib.sha256(open(path,'rb').read()).hexdigest()
    if curr_hash != orig_hash:
         changed.append(fname)
end = time.perf_counter()

if not changed:
    print("✅ Configuration intact")
else:
    print("⚠️ Modified files:", changed)

print(f"Verification time: {(end-start):.4f} s")
