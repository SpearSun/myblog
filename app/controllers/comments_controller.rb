class CommentsController < ApplicationController
  before_filter :authenticate_user!
  # before_action :authenticate_user!

  def create
    @article = Article.find(params[:article_id])
    
    params[:comment][:body] = params[:comment][:body].strip
    if params[:comment][:body] =~ /^Reply @(.*)\s/i
      @comment = Comment.new(
        article_id: params[:article_id], 
        author: current_user.email,
        author_id: current_user.id,
        body: params[:comment][:body],
        main_comment_id: params[:comment][:main_comment_id] 
      )
      @comment.save
    else
      @comment = Comment.new(comment_params)
      @comment.author = current_user.email
      @comment.author_id = current_user.id
      @comment.article_id = params[:article_id]
      @comment.save
      # @comment = @article.comments.create(comment_params)
    end

    respond_to do |format|    
      format.html { redirect_to article_path(@article) }
      format.js {}
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:article_id, :author, :body, :body_html, :main_comment_id, :author_id, :main_comment_id)
    end
end
