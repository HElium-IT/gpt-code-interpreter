#!/bin/sh

start () {
    echo "Copying node_modules into app dir"
    cp -r /server/cache/node_modules/. /server/app/node_modules/
    echo "Starting server"
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