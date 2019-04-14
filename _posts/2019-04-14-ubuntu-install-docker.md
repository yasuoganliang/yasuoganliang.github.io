---
title: ubuntu18.04 安装 docker
categories: ubuntu18.04 install docker
date: 2019-04-14 18:24:00
excerpt: ubuntu install docker by apt
tags:
 - ubuntu
 - docker
---

{ % include toc title = "catelog" % }

## Ubuntu18.04 安装 docker
* 通过包管理工具安装
```
sudo apt install apt-transport-https ca-certificates curl software-properties-common // 下载依赖工具
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - // 导入 GPG key
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" // 添加仓库源
sudo apt update
sudo apt install docker-ce // 下载 docker 社区版
```

* 启动 docker
`sudo systemctl start docker`

* 设置开机自启动，不需要的可以不设置
`sudo systemctl enable docker`

* 安装完成后可以使用 `docker --version` 查看是否安装成功
* 或者运行 `sudo systemctl status docker` 查看状态

### docker 的一些命令操作
* 查找镜像
```
sudo docker search imagename // imagename 为镜像的名称
sudo docker search -s 10 debian // 查找 stars 大于 10 的 debian 镜像
```

* 拉取镜像
```
sudo docker pull debian
```

* 启动容器
```
sudo docker -it debain /bin/bash
```
