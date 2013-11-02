class PostsController < ApplicationController

  def index
    #This renders the form it's the view (GET) and 
    @posts = Post.all
  end

  def new # This will generate the from (POST) - will save to the database
    @post = Post.new
  end

  def create #Saves to the Database
   @post = Post.new(params[:post])
   if @post.save
    redirect_to posts_path
   else
    render :new
   end
  end

  def edit #View to user to edit the post
    @post = Post.find(params[:id])
  end

  def update #Tells the server to update the form
    @post = Post.find(params[:id])

    if @post.update_attributes(params[:post])
      redirect_to posts_path
    else
      render :edit
    end
  end

  def delete #some form/link that says delete to the user to the user
    @post = Post.find(params[:id])
  end

  def destroy #tells the backend to destroy that post!
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to post_path
  end

  def show #Will render all posts in the POST route.
    @posts = Post.all
    redirect_to posts_path
  end

end