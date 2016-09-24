class CommentsController < ApplicationController
  def index
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @comment = @user.comments.new
  end

  def create
    @user = User.find(params[:user_id])
    @comment = @user.comments.new(comment_params)
    if @comment.save
      flash[:success] = 'New comment was successfully created'
      respond_to do |format|
        format.html { redirect_to user_path(@user) }
        format.js
      end
    else
      flash[:error] = 'New comment was unable to be saved'
      render user_path(@user)
    end
  end

  private
  def comment_params
    params.require(:post).permit(:content, :username)
  end
end
