class AddCachedCatListToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :cached_cat_list, :string
  end
end
