#!/usr/bin/python

# by wullxz

from subprocess import call
import os.path

fileasoc = [
    ["vimrc", "~/.vimrc"],
    ["bashrc", "~/.bashrc"]
]

yes = set(['yes', 'y', 'ye', ''])
no = set(['no', 'n'])
scriptdir = os.path.dirname(os.path.realpath(__file__))

# link files!
for f in fileasoc:
    source = os.path.expanduser(f[1])
    target = os.path.join(scriptdir, f[0])
    override = True
    print "Trying to link %s to %s" % (source, target)
    if (os.path.isfile(source) or os.path.islink(source)):
        choice = raw_input("File %s already exists! Override? [y/n] " % source).lower()
        if choice in yes:
            call(["rm", source])
            override = True
        elif choice in no:
            override = False
            print "Not overriding %s! Skipping..." % source
            continue
        else:
            print "Please respond with 'yes' or 'no'! Skipping %s for now..." % source
    else:
        print "File %s not existing... doing symlink now!" % source


    if override:
        print "Linking %s to %s" % (source, target)
        call(["ln", "-s", target, source])

    print ""
