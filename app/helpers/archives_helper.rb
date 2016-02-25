module ArchivesHelper
  def archive_months
    @months = Article.select("date_format(updated_at, '%b %Y') as ym_name, date_format(updated_at, '%Y%m') as ym_code").group("date_format(updated_at, '%Y %b')").order("date_format(updated_at, '%Y%m')")
  end
end
