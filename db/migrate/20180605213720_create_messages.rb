class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :context
      t.references :user, foreign_key: true
      t.references :conversation, foreign_key: true

      t.timestamps
    end
  end
end
