class AddUserIdToPins < ActiveRecord::Migration
  def change
    add_column :pins, :user_id, :ineger
    add_index :pins, :user_id
  end
end
