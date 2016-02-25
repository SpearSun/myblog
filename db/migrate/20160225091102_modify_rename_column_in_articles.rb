class ModifyRenameColumnInArticles < ActiveRecord::Migration
  def change
    rename_column :articles, :body_html, :cached_category_list
  end
end
