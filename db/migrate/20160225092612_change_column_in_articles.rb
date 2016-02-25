class ChangeColumnInArticles < ActiveRecord::Migration
  def change
    change_column :articles, :cached_category_list, :string, limit: 100
  end
end
