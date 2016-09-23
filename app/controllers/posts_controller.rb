class PostsController < ApplicationController
  def index
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @post = @user.posts.new
  end

  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.new(post_params)
    if @post.save
      flash[:success] = 'New post was successfully created'
      respond_to do |format|
        format.html { redirect_to user_path(@user) }
        format.js
      end
    else
      flash[:error] = 'New post was unable to be saved'
      render user_path(@user)
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :user_id)
  end
end
