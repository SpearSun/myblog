module ArchivesHelper
  def archive_cats
    @months = Article.find_by_sql "select date_format(updated_at, '%Y %b') from articles group by date_format(updated_at, '%Y %b')"
    # @months = ["May", "Sep"]
  end
end
