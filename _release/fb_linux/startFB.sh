#!/bin/bash
APP_DIR=$(readlink -f "$(dirname "$(readlink -f "$0")")/")
echo "APP_DIR: $APP_DIR"
cd "$APP_DIR"
chmod a+x $APP_DIR/filebrowser

./filebrowser --address 0.0.0.0 --port 18080 --log "$APP_DIR/run.log" --root /tmp
