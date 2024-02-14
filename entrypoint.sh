#!/bin/bash

if [ $# -eq 0 ]; then
    /usr/local/bin/moodle-dl --path /files
else
    /usr/local/bin/moodle-dl --path /files "$@"
fi
