class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name, limit: 30
      t.integer :taggings_count

      t.timestamps null: false
    end
  end
end
