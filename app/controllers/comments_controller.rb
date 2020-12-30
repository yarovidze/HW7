class CommentsController < ApplicationController
  before_action :set_post, only: [:create, :update, :destroy]

  def index

  end

  def update
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.update(comments_params)
    redirect_to @post, notice: "Comment was published."
  end

  def create
    @comment = @post.comments.build(comments_params)
    @comment.author_id = current_author.id
    @comment.save
    redirect_to @post
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to @post, notice: "Comment was successfully deleted."
  end

  def show

  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comments_params
    params.require(:comment).permit(:author_id, :body, :status)
  end
end