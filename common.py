import hashlib

def get_md5_hash(data):
    hasher = hashlib.md5()
    hasher.update(data.encode("utf-8"))
    return hasher.hexdigest()
