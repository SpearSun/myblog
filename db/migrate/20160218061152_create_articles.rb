class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :slug
      t.text :body
      t.text :body_html
      t.boolean :active
      t.integer :approved_comments_count
      t.string :cached_tag_list
      t.datetime :published_at
      t.datetime :edited_at

      t.timestamps null: false
    end
  end
end
