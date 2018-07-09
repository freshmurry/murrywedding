class AddPinIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :pin_id, :integer
  end
end
