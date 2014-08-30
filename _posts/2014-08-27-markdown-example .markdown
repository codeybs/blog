---
layout: post
title:  "markdown-example"
date:   2014-08-30 15:15:41
categories: jekyll update
author: BaoshengYu
---
<!--上面的内容是一个yaml文件头-->




<!--下面一个关于使用markdown示例文档-->

<!--标题
Markdown 支持两种标题的语法：
1.Setext: Setext 形式是用底线的形式，利用 = （最高阶标题）和 - （第二阶标题）。
2.Atx: Atx 形式在行首插入 1 到 6 个 # ，对应到标题 1 到 6 阶。
-->

这是setext最高阶标题
============
=
这是setext第二阶标题
-------------

#这是Atx形式1阶标题

##这是Atx形式2阶标题

###这是Atx形式3阶标题

####这是Atx形式4阶标题

#####这是Atx形式5阶标题

######这是Atx形式6阶标题


<!--段落的表示：
连续的行句组成段落，而一个以上的空行则会划分出不同的段落
(空行的定义是显示上看起来像是空行，就被视为空行，例如有一行只有空白和 tab，那该行也会被视为空行)
一般的段落不需要用空白或换行缩进
-->

这是第一个段落，
我们可以用一个空行来区分不同的段落。

这是第二个段落，
第二个段落和第一个段落之间有一个空行


<!--区块的表示：
区块引用使用 email 形式的 '>' 角括号
-->

> This is a blockquote.
> 
> This is the second paragraph in the blockquote.
>
> ## This is an H2 in a blockquote



<!--修辞与强调
Markdown 使用星号和底线来标记需要强调的区段。
-->
*emphasize* 

_emphasized also_

**strong emphasized**


<!--列表
无序列表使用星号、加号和减号来做为列表的项目标记，这些符号是都可以使用的
有序的列表则是使用一般的数字接着一个英文句点作为项目标记
-->

*item1

*item2

*item3

1.item1

2.item2

3.item3



<!--链接
Markdown 支援两种形式的链接语法： 行内 和 参考 两种形式，两种都是使用角括号来把文字转成连结
1.行内形式是直接在后面用括号直接接上链接
2.参考形式的链接让你可以为链接定一个名称，之后你可以在文件的其他地方定义该链接的内容
-->

行内形式：This is an [example link](http://example.com/).

参考形式：
I get 10 times more traffic from [Google][1] than from
[Yahoo][2] or [MSN][3].

[1]: http://google.com/ "Google"

[2]: http://search.yahoo.com/ "Yahoo Search"

[3]: http://search.msn.com/ "MSN Search"



<!--图片
图片的语法和链接很像
-->
行内形式：![alt text](/path/to/img.jpg "Title")

参考形式：
![alt text][id]

[id]: /image/test.jpg "Title"

<!--代码
在一般的段落文字中，你可以使用反引号 ` 来标记代码区段，
区段内的 &、< 和 > 都会被自动的转换成 HTML 实体
这项特性让你可以很容易的在代码区段内插入 HTML 码
-->







































