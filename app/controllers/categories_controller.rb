require 'will_paginate/array' 

class CategoriesController < ApplicationController
    
  def index
    @category_id = params[:cat_id]
    @articles = Article.find_by_sql("select * from articles where cached_category_list = " + @category_id + " order by updated_at desc").paginate(page: params[:page], per_page: 5)
    render "articles/index"
  end
end
