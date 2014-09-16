---
layout: post
title: Some Thing About Github Blog
date: 2014-09-14 21：48：37
categories: common
author: Baosheng Yu
---

##写在前面的话

> 一直没有写博客的习惯，原因有很多，其中很重要的一个原因就是各种各样的博客页面繁琐的让人烦躁。
简洁的页面总让人感到愉快安逸，我喜欢这样的感觉。使用Github Page搭建一个自己的博客，可以让自己
随心所欲的设计自己的博客，完全的控制自己的博客，这种自由的感觉给人一种享受。在这里记录搭建一个
Github Blog的过程，算是一个笔记吧！


##搭建Github Blog的准备

> + 简单的Git使用
> + 简单了解jekyll
> + 简单了解Markdown


##关于Github Page

> Github是一个共享虚拟主机服务，用于存放使用git版本控制的项目代码，Github Page是一个允许用户自己设计
的项目首页，可以简单的认为一个项目介绍的页面。


##关于Jekyll

> Jekyll 是一个静态站点生成器，可以根据一定的源码生成静态网页。Github Page功能并不是让用户直接编写HTML
源码页面，而是提供一些了模板，让用户使用符合jekyll规范的源码，然后由Jekyll来生成最终的网页文件。



##关于Markdown 

> Markdown是Jekyll支持的一种轻量级的标记语言，这种标记语言主要的特点是它允许人们使用易读易写的文本格式
编写文档，然后转换成其他常用的PDF格式的文件，XHTML（或者HTML）文件，这样使得人们在书写文档的过程中可以
更加集中注意力于文档的内容，而不是文档的格式和样式（而这恰恰是常常令人感到繁杂的地方）。


## Github Blog的工作过程

> + 首先我们在本地书写符合Markdown规范的文档，然后提交到github的分支上。
> + 然后github服务器会在一段时间后使用Jekyll来编译Markdown文件，生成HTML文件。
> + 最后当我们访问blog的时候，github会将生成的HTML文件传送给我们，最终显示在我们的浏览器中。



##搭建Github Blog的简单过程

> 1. 安装和使用Jekyll（这不是必须的，但是也不妨听听）
    + Jekyll 可以分析markdown文件，在本地安装了Jekyll之后我们可以在本地打开Jekyll服务，这样我们就可以在
      本地“预览”自己的博客了。尤其是最初期的时候，由于对于Markdown文法的一些细节不够熟悉，可能会出现自己
      编辑的Maekdown文档生成博客页面与自己想象中的有所不同（如缺少空行，缺少空格等），这时候如果可以在本地
      “预览”一下也是不错的选择，如果不喜欢也可以跳过这些内容。
    + 安装Jekyll（以下在ubuntu系统中为例）
      + `gem install jekyll` (需要先安装ruby，可以使用apt-get直接安装) 
    + 使用Jekyll新建博客模板
       + 利用Jekyll生成一个静态站点的实例模板
       + 执行`Jekyll new myblog`，便可以生成一个Jekyll博客的模板，关于目录下的文件的介绍参见后面的文章。    
    + 使用Jekyll服务器预览
      + Jekyll 集成了一个开发用的服务器，可以让我们使用浏览器在本地预览。
      + 在新建的blog目录中（如上面的`myblog`）,使用命令`jekyll serve`开启Jekyll服务器，服务器运行在`http://localhost:4000/`
    + 此时在浏览器中打开应该就可以看到模板博客，如果希望设计自己喜欢的风格的博客页面，可以在[Jekyll项目主页](http://jekyllcn.com/)上找到你需要的内容。
> 2. 开始搭建Github Blog
   + 首先申请一个Github账户，并且新建一个代码仓库(repository)。
     + github page提供个人主页和项目主页。
     + 个人主页的reposttory name 必须是`yourname.github.io`，对于这个代码仓库，Jekyll只解析master分支上的代码。
     + 项目主页的repository name 可以是任意的，对于这类的代码仓库，Jekyll只解析gh-pages这个分支的代码。 
   + 然后可以将我们的本地blog发布到代码仓库了。
     + 使用Git命令推送代码
       * `git init`
       * `git add .`
       * `git checkout gh-pages`
       * `git commit -m 'blog init'`
       * `git remote add origin https://github.com/username.github.io`
       * `git push origin gh-pages`
     + 需要注意的是：如果搭建的博客类型是项目主页，那么Jekyll的配置文件（_config.yml）中的baseurl要改为blog的路径。
       如`baseurl: /blogname`.
    + 稍等片刻，就可以访问自己的主页了。

## 为博客添加评论功能

> 可以使用[Disqus](http://disqus.com)等第三方评论插件功能来为博客添加评论功能,操作简单。

  > + 注册一个disqus账户，然后选择合适的博客类型，之后disqus会生成相应的javascript代码。
  > + 将代码添加到你需要添加评论的页面源代码的最下方即可。

-------------------------------------------------

## 一些更详细的描述

+ [Jekyll静态站点模板介绍]()
+ [使用简单的脚本简化博客发布过程]()
+ [Git的简单使用]()
