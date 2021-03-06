class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, limit: 50, null: false
      t.string :password, limit: 60
      t.boolean :active
      t.boolean :admin
      t.string :address, limit: 100
      t.string :email, limit: 50
      t.timestamps :last_active_date
      t.string :password_digest, limit: 255, null: false

      t.timestamps null: false
    end
  end
end
