class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
    if @comment.save
      redirect_to restaurant_path(@comment.restaurant_id)
    else
      redirect_to restaurant_path(@comment.restaurant_id)
    end
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to comment_path(@comment)
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_path
  end

  private

    def comment_params
      params.require(:comment).permit(:restaurant_id, :user_id, :content)
    end

end
