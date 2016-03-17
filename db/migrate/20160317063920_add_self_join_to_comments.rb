class AddSelfJoinToComments < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.references :main_comment
    end
  end
end
