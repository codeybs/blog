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

+ 简单的Git使用
+ 简单了解jekyll
+ 简单了解Markdown


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

+ 首先我们在本地书写符合Markdown规范的文档，然后提交到github的分支上。
+ 然后github服务器会在一段时间后使用Jekyll来编译Markdown文件，生成HTML文件。
+ 最后当我们访问blog的时候，github会将生成的HTML文件传送给我们，最终显示在我们的浏览器中。



##搭建Github Blog的详细过程

### 安装和使用Jekyll（这不是必须的，但是也不妨听听）

### 在本地启动Jekyll服务，预览Blog。

### 将博客部署到Github