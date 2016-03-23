class FavoritesController < ApplicationController
  before_filter :authenticate_user!

  def favorite
    @favorite = Favorite.find_by(user_id: params[:user_id], article_id: params[:article_id])
    
    if @favorite.blank?
      Favorite.create(favorite_params)
      render text: "Do"
    else
      Favorite.find_by(favorite_params).destroy
      render text: "Undo"
    end
  end

private
  def favorite_params
    { user_id: params[:user_id], article_id: params[:article_id] }
  end
end
