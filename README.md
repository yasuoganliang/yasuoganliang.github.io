## hey

#### 添加 blog 直接在 `_posts` 目录下按照格式编辑，之后 `pull request` 即可

#### 练习测试文档可以写到 `exercise` 目录下

### 以下是 `markdown` 语法的基本使用
* 本文档使用的也是 `markdown` 语法
* `markdown` 文档一般以 `.md` 或 `.markdown` 为拓展名
* 符号与文本用空格分隔

# 我是一级标题
## 我是二级
### 我是三级
#### 我是四级
##### 到我了，我是五
###### 我是六级标题
```
上面是渲染后的效果，下面是原型
# 我是一级标题
## 我是二级
### 我是三级
#### 我是四级
##### 到我了，我是五
###### 我是六级标题
```

### 文本
* 加粗: 文本左右两个星号为 **加粗了**
* 斜体: 文本左右一个星号为 *变斜了*
* 删除线: 文本左右加两个波浪线 ~~这个样子~~
```
* 加粗: 文本左右两个星号为 **加粗了**
* 斜体: 文本左右一个星号为 *变斜了*
* 删除线: 文本左右加两个波浪线 ~~这个样子~~
```

### 引用
* 引用: 用右尖括号表示引用
> "与其坐而论道，不若起而行之。"
>> "关关雎鸠，在河之洲"

```
* 引用: 用右尖括号表示引用
> "与其坐而论道，不若起而行之。"
>> "关关雎鸠，在河之洲"
```

### 有序文本，无序文本
* 可以使用星号，加号或者减号标记无序列表
* 有序列表使用数字加小数点(如 `1.`) 来标记

* 无序就这个样子
	+ 还是无序
		- 再来一个无序

1. 目录
2. 摘要
3. 正文
```
* 无序就这个样子
	+ 还是无序
		- 再来一个无序

1. 目录
2. 摘要
3. 正文
```

### 代码块
* 这个文档已经使用了很多代码块了，所有你看到的未渲染的内容都在代码块里，开头结尾各使用三个反引号标记
* 单行代码块可以用一对反引号标记
`hello world`

### 图片和链接
* 文本中插入图片
* 使用 `![图片文字](图片地址 '图片标题')` 格式来标记，其中图片文字和标题可以为空
* 使用 `[链接标题](链接地址)` 来标记超链接
![图片来了](/assets/images/avator.png)
[yasuoganliang](https://yasuoganliang.github.io)
```
![图片来了](/assets/images/avator.png)

[yasuoganliang](https://yasuoganliang.github.io)
```

### 表格
* 使用竖线来标记不同的单元格，用减号标记表头和行
* 对齐方式
	* -: 减号加冒号用来标记右对齐，减号可以有多个
	* :- 冒号加减号标记左对齐
	* :-: 两个冒号间加一个或多个等号标记居中对齐

| 左对齐  | 右对齐 | 剧中对齐 |
| :----- | ----: | :-----: |
|     2  |  1	 | hello   |
| 单元格  |  1	  | hello   |

* 三个或三个以上星号标记分割线
******************************
分开了
***************

```
| 左对齐  | 右对齐 | 剧中对齐 |
| :----- | ----: | :-----: |
|     2  |  1	 | hello   |
| 单元格  |  1	  | hello   |

* 三个或三个以上星号标记分割线
******************************
分开了
***************
```
