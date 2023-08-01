#!/bin/bash

start () {
    echo "Starting flask app and jupyter notebook"
    python3 app.py & jupyter notebook --ip 0.0.0.0 --port 8888 --no-browser --allow-root
}


for arg in "$@"; do
    case $arg in
        --start)
        start
        ;;
    esac
done
