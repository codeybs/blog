#!/bin/bash
#-------------------------------------------------------------------------------------------
#This is a script for writing github blog.
#You can use it to write a new blog in local without internet.
#You can push it to your github blog at any time when you have the internet connection.
#Just enjoy it!

export BLOG_CATEGORY="common"
export BLOG_AUTHOR="Baosheng Yu"
export DEBUG=false
export LOCAL_BLOG_POST_DIR=/home/ybs/blog/localblog/_posts/
export LOCAL_BLOG_MAIN_DIR=/home/ybs/blog/localblog/
export BLOG_POST_DIR=/home/ybs/blog/blog/_posts/
export BLOG_MAIN_DIR=/home/ybs/blog/blog/
export BLOG_EDIT_DIR=/home/ybs/blogdoc/

#--------------------------------------------------------------------------------------------
#define some new function.

#define a DEBUG function used for debugging the script.
DEBUG()
{
	if [ "$DEBUG" = "true" ];then
		$@
	fi
}

# Build a new blog.
if [ "$1" = "new" ];then
	DEBUG echo 'build a new blog!'
	cd $BLOG_EDIT_DIR
	#Firstly,get the blog name
	shift #ignore word 'new'
	blog_title=$@
	blog_filename=`date +'%Y-%m-%d'`;
	for blog_name_str in $@
	do
		DEBUG echo $blog_name_str
		blog_filename="$blog_filename-""$blog_name_str"
	done 
	blog_filename=$blog_filename".md";
	DEBUG echo $blog_filename

	#create file and add yaml head.
	echo '---' > $blog_filename
	echo 'layout: post' >> $blog_filename
	echo 'title: '$blog_title >>$blog_filename
	echo 'date: '`date +'%Y-%m-%d %H：%M：%S'` >>$blog_filename
	echo 'categories: '$BLOG_CATEGORY>>$blog_filename
	echo 'author: '$BLOG_AUTHOR>>$blog_filename
	echo '---'>>$blog_filename
	echo ''>>$blog_filename
	DEBUG echo 'New blog has been built!'
	DEBUG cat $blog_filename
	#export blog_name=$blog_filename		
	#use emacs to edit the blog.
	emacs -nw $blog_filename
	ls $BLOG_EDIT_DIR

elif [ "$1" = "pre" ]||[ "$1" = "preview" ];then
	DEBUG echo 'Preview the new blog!'
	DEBUG echo '--------------------------------------'
	blog_filename=$2
	#use jekyll to generate preview html file
	DEBUG echo $blog_filename
	DEBUG echo '------------ls posts dir---------------------------'
	cp $blog_filename  $LOCAL_BLOG_POST_DIR$blog_filename
	DEBUG ls $LOCAL_BLOG_POST_DIR
	DEBUG echo '-------------cat blog--------------------------'
	DEBUG cat $LOCAL_BLOG_POST_DIR$blog_filename
	cd $LOCAL_BLOG_MAIN_DIR
	jekyll serve
	cd $BLOG_EDIT_DIR

elif [ "$1" = "push" ];then
	DEBUG echo 'Push the blog to the remote server and publish it!'
	blog_filename=$2

	#copy the blog file to push dir
	DEBUG echo $blog_filename
	DEBUG echo '------------ls posts dir---------------------------'
	cp $LOCAL_BLOG_POST_DIR$blog_filename  $BLOG_POST_DIR$blog_filename
	DEBUG ls $BLOG_POST_DIR
	DEBUG echo '-------------cat blog--------------------------'
	DEBUG cat $BLOG_POST_DIR$blog_filename
	
	#use git to push the blog 
	cd $BLOG_MAIN_DIR
	git add .
	git commit -m $blog_filename`date +"%Y%m%d_%H:%M:%S"`
	git push origin gh_pages
	cd $BLOG_EDIT_DIR

else 
	echo ''
	echo '*---------------Help Information!----------------*'
	echo '*options        *discriptions                    *'
	echo '*------------------------------------------------*'
	echo ' new           ''build a new blog. '
	echo ' pre           ''preview the blog. '
	echo ' push          ''push the blog to remote server.  '
	echo '*------------------------------------------------*'
	echo ' usage: ./blog.sh [option] [blogname]'
	echo '*-------------------------------------------------*'
	echo ''
fi


