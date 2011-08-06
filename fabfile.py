#!/usr/bin/env python

import os
import glob

def install():
    for file in glob.glob('*'):
        if file in ['ReadMe.markdown', 'LICENSE']: continue

        # check if the file already exists in the target 
        target_file = os.path.join(os.environ['HOME'], "." + file)
        print target_file


def link_file(file):
    if False:
        pass
    else:
        print "linking ~/.%s" % file
        #os.link(file, "%s/.%s" % (os.environ['HOME'], file)]


