class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    
    if params[:comment][:body] =~ /^Reply @([\w]*)\s/i
      @comment = Comment.new(
        article_id: params[:article_id], 
        author: session[:name],
        author_id: session[:id],
        body: params[:comment][:body],
        main_comment_id: params[:comment][:main_comment_id] 
      )
      @comment.save
    else
      @comment = Comment.new(comment_params)
      @comment.author = session[:name]
      @comment.author_id = session[:id]
      @comment.article_id = params[:article_id]
      @comment.save
      # @comment = @article.comments.create(comment_params)
    end
    @floor = @article.comments.size

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
