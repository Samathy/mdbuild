#!/bin/bash
#Script to run a bunch of commands to build a document out of a Markdown file
#Copyright Samathy Barratt (samathy@sbarratt.co.uk)
if [ $1 == "-h" ]
    then
        echo "Usage: buildmd [md filename] [output filename (pdf)]"
        exit 1
    fi

aspell $1 -C & markdown $1 | mdstyle -m 10| wkhtmltopdf - $2 

