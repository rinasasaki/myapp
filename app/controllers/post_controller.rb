class PostController < ApplicationController

  def index 
    @posts = Post.all
  end

  def new
    @posts = Post.new
  end
  
  def post
    @posts = Post.new(post_params)
    if @posts.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

end