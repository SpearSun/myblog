class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :article_id
      t.string :author
      t.integer :author_id
      t.string :author_url
      t.string :author_email
      t.text :body
      t.text :body_html

      t.timestamps null: false
    end
  end
end
