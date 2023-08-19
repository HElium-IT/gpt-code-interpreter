#!/bin/sh

start () {
    echo "Starting client"
    exec npm start
}

# when --start is passed, call start()
for arg in "$@"; do
    case $arg in
        --start)
        start
        ;;
    esac
done