#!/usr/bin/env python

import os
import glob
import filecmp
from jinja2 import Environment, FileSystemLoader

def install():
    replace_all = False
    files_to_skip = ['ReadMe.md', 'LICENSE', 'build']
    for file in glob.glob('*'):
        # TODO: Remove the ruby leftovers!
        if file in files_to_skip or '.py' in file: continue
            
        # check if the file already exists in the target 
        target_file = os.path.join(os.environ['HOME'], "." + file.replace('.jinja2','') )
        if os.path.exists(target_file):
            if filecmp.cmp(file, target_file):
                print "identical ~/." + file
            elif replace_all:
                replace_file(file) 
            else:
                print "overwrite ~/." + file.replace('.jinja2','') + "? [ynaq] "
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
                    print "skipping ~/." + file.replace('.jinja2', '')
        else:
            link_file(file)

def replace_file(file):
    os.system("rm -rf %s/.%s" % (os.environ['HOME'], file))
    link_file(file)

def link_file(file):
    # check if file is a template
    if '.jinja2' in file:
        environment = Environment(loader = FileSystemLoader(os.path.dirname(file)))
        github_api_token = raw_input("your github api token > ")

        new_file = os.environ['HOME'] + "/." + file.replace('.jinja2', '')
        substituted_file = open(new_file, 'w')
        template = environment.get_template(file)
        substituted_file.write(template.render(github_api_token=github_api_token, home=os.environ['HOME']))
    else:
        print "linking ~/.%s" % file
        os.system('ln -s ' + os.path.abspath(file) + " " + os.environ['HOME'] + "/." + file)
            
if __name__ == "__main__":
    install()
