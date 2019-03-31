---
title: Ubuntu18.04 安装 bundle、jeykyll
date: 2019-03-31 21:00:00
excerpt: Ubuntu18.04 安装 bundle、jeykyll
categories: bundle jeykyll
tags:
	- Ubuntu18.04
	- bundle
	- jekyll
---

### Ubuntu18.04 安装 bundle、jeykyll
* 安装依赖
`sudo apt-get install zlib1g-dev`

* 安装 ruby
`sudo apt-get install ruby ruby-dev`

* 安装 nodejs
```
curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
sudo apt install nodejs
```

* 切换 gem 源
`gem sources --add http://gems.ruby-china.com/ --remove https://rubygems.org/`
`gem sources`

* 下载 bundle jeykell
```
sudo gem install jekyll
sudo gem install rdiscount
sudo gem install bundler
```
# 切换到自己jekyll网页工程的根目录
```
cd $WORKSPACE
bundle install
```

# 启动本地网站，之后就可以通过浏览器本地访问自己的网站了
`bundle exec jekyll serve -H 0.0.0.0`

