#!/usr/bin/env python

import os
import glob
import filecmp

def install():
    replace_all = False
    for file in glob.glob('*'):
        if file in ['ReadMe.markdown', 'LICENSE']: continue

        # check if the file already exists in the target 
        target_file = os.path.join(os.environ['HOME'], "." + file)
        if os.path.exists(target_file):
            if filecmp.cmp(file, target_file):
                print "identical ~/." + file
            elif replace_all:
                replace_file(file) 
            else:
                print "overwrite ~/." + file + "? [ynaq] "
                input = raw_input("> ")
                # ok so python oviously doesn't have a switch/case statement and
                # the use of a dict for such things seems weird to me so far
                if 'a' in input:
                    replace_all = True
                    replace_file(file)
                elif 'y' in input:
                    replace_file(file)
                elif 'q' in input:
                    sys.exit(0)
                else:
                    print "skipping ~/." + file
        else:
            link_file(file)

def replace_file(file):
    print "replacing", file

def link_file(file):
    if False:
        pass
    else:
        print "linking ~/.%s" % file
        #os.link(file, "%s/.%s" % (os.environ['HOME'], file)]


