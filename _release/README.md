# _release

见github release页面

https://github.com/mxcall/filebrowser/releases

## win启动

```
@echo off
set ERROR_CODE=0

set BASEDIR=%~dp0\
cd %BASEDIR%

filebrowser.exe --address 0.0.0.0 --port 18080 --log %BASEDIR%\run.log --root D:\



```

## linux启动
```
#!/bin/bash
APP_DIR=$(readlink -f "$(dirname "$(readlink -f "$0")")/")
echo "APP_DIR: $APP_DIR"
cd "$APP_DIR"
chmod a+x $APP_DIR/filebrowser

./filebrowser --address 0.0.0.0 --port 18080 --log "$APP_DIR/run.log" --root /tmp

```