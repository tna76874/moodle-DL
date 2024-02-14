#!/bin/bash

if [ $# -eq 0 ]; then
    exec moodle-dl --path /files
else
    exec moodle-dl --path /files "$@"
fi
