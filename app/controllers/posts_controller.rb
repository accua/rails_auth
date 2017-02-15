class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @user = User.find(params[:user_id])
  end

  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.new(post_params)
    if @user.save
      redirect_to
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to user_path(@user)
  end

private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
