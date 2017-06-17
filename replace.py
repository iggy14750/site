
# Use: `python replace.py <string> <base-file> <repl-file> <out-file>`
# Replaces all intstances of `<string>` in `<base-file>` with
# the contents of `<repl-file>` and puts the result in `<out-file>`
# Hey, it was easier than learning how to use `sed`.

import sys

if len(sys.argv) < 5:
    print("Insufficient arguments")
    print("Use: `python replace.py <string> <base-file> <repl-file> <out-file>`")

string = sys.argv[1]
base_file = sys.argv[2]
repl_file = sys.argv[3]
out_file = sys.argv[4]

base = open(base_file).read()
repl = open(repl_file).read()

with open(out_file, "w") as f:
    f.write(repl.join(base.split(string)))
