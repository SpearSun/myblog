class ArchivesController < ApplicationController
  def index
    # @months = Article.find_all_grouped_by_month
    @months = Array.new("May", "Sep")
  end
end
