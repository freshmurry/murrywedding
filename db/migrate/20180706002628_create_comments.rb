class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :comment

      t.timestamps null: false
      t.references :pin, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end