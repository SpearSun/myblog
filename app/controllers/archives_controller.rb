require 'will_paginate/array' 

class ArchivesController < ApplicationController
    
  def index
    @category = params[:ym_code]
    @articles = Article.find_by_sql("select * from articles where date_format(updated_at, '%Y%m') = " + @category + " order by updated_at desc").paginate(page: params[:page], per_page: 5)
    render "articles/index"
  end
end
