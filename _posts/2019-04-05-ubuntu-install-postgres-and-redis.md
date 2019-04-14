---
title: Ubuntu18.04 安装 postgres 和 redis
date: 2019-04-05 22:33:00
categories: 
 - postgres
 - redis
excrept: Ubuntu18.04 install postgres and redis
tags:
 - ubuntu
 - postgres
 - redis
---

{% include toc title = "catalog" %}

## ubuntu18.04 apt install postgres
```
sudo apt-get install curl ca-certificates
curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
sudo apt update
sudo apt-get install postgresql-11 pgadmin4
```

## install redis
* [redis download page](https://redis.io/download)
```
wget http://download.redis.io/releases/redis-5.0.4.tar.gz
tar xzf redis-5.0.4.tar.gz
cd redis-5.0.4
make
```

* 启动 redis
```
cd $REDIS_HOME // REDIS_HOME=$WORKSPACE/redis-5.0.4/src
./redis-server
```

* 连接 redis
```
cd $REDIS_HOME
./redis-cli
```
