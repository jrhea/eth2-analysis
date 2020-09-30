from hashlib import sha256
import sys
# Example USAGE:
# > python src-id-from-tag.py dest a0987654321 $(python src-id-from-tag.py src 1234567890a a0987654321)
# a0987654321

# "src" or "dest"
mode = sys.argv[1]

if mode == "src":
    #SRC -> DEST
    src_nodeid=sys.argv[2].encode('utf-8')
    dest_nodeid=sys.argv[3].encode('utf-8')
    tag=hex(int(sha256(dest_nodeid).hexdigest(),base=16)^int(src_nodeid,base=16))
    print(tag[2:])
elif mode == "dest":
    # DEST NODE RECOVERS SRC ID
    dest_nodeid=sys.argv[2].encode('utf-8')
    tag=sys.argv[3].encode('utf-8')
    print(hex(int(sha256(dest_nodeid).hexdigest(),base=16) ^ int(tag,base=16))[2:])
