#!/bin/sh

start () {
    echo "Copying node_modules into app dir"
    cp -r /client/cache/node_modules/. /client/app/node_modules/
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