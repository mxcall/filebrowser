## 文档
[https://github.com/filebrowser/filebrowser](https://github.com/filebrowser/filebrowser)

[https://filebrowser.org/contributing](https://filebrowser.org/contributing)


## 运行
> 命令

./filebrowser --address 0.0.0.0 --port 18080 --log '/usr/local/filebrowser/run.log' --root  /volume3/biz/01_tmp_shorttime/

> 请求写法
```
// 下载文件-旧写法
http://127.0.0.1:8080/api/raw/03_doc/docker_practice.pdf?auth=eyJhbGciOiJIUxxx&
// 下载文件-新写法
http://127.0.0.1:8080/api/raw/03_doc/docker_practice.pdf
// 下载目录-旧写法
http://127.0.0.1:8080/api/raw/boltBrowser_v2.4_win/?algo=targz&auth=eyJhbGcixxx&
// 下载目录-新写法 
//(若不加algo, 会提示报错, 避免误下载超大文件夹!!!)
//(安全起见不能给匿名用户开放下载目录的权限, 所以下载文件夹还需要登录!!!)
//http://127.0.0.1:8080/api/raw/boltBrowser_v2.4_win/?algo=targz

```


## 编译
> Go环境变量设置
```
GO111MODULE=on
GOPATH=D:\04_workspace\1work_go
GOPROXY=https://goproxy.cn
PATH 添加 D:\01_env\go\bin
     添加 D:\04_workspace\1work_go\bin
```

> 前端
```
# From the root of the repo, go to frontend/
cd frontend
# Install the dependencies
npm install
# Build the frontend
npm run build
#npm run watch
```

> 后端
```
# 默认包(自动关联平台)
go mod download
go build

## 编译window下运行软件
SET CGO_ENABLED=1
SET GOOS=windows
SET GOARCH=amd64
go build

## 编译 linux 下运行软件
SET CGO_ENABLED=0
SET GOOS=linux
SET GOARCH=amd64
go build


```

