class ModifyColumnInArticles < ActiveRecord::Migration
  def change
    rename_column :articles, :slug, :user_id
  end
end
