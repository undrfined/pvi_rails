class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to article_path @article
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = current_user.comments.find(params[:id])
    @comment.destroy

    redirect_to article_path @article
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :status)
  end
end
