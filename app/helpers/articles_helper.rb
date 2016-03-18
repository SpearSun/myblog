module ArticlesHelper
  def my_article?
    logged_in? && Article.find_by(id: params[:id], user_id: session[:id])
  end
end
