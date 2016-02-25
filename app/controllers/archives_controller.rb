class ArchivesController < ApplicationController
  def index
    # @months = Article.find_all_grouped_by_month
    @months = ["May", "Sep"]
  end
end
