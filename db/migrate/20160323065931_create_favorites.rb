class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :article_id

      t.index :user_id
      t.index :article_id

      t.timestamps null: false
    end
  end
end
