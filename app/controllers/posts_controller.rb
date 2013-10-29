class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
   @post = Post.new(params[:post])
   if @post.save
    redirect_to posts_path
   else
    render :new
   end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(params[:post])
      redirect_to posts_path
    else
      render :edit
    end
  end

  def delete
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to post_path
  end

  def show
    @posts = Post.all
    redirect_to posts_path
  end

end