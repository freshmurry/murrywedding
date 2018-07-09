class AddExtraFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :uid, :string
    add_column :users, :title, :string
    add_column :users, :description, :text
  end
end
