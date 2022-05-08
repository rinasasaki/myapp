class PostController < ApplicationController

  def index 
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(task_params）
    if @post.save
      redirect_to post_path
    else
      render 'new'
    end
  end

  private
  def post_params
end
end
