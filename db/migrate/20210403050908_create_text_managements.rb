class CreateTextManagements < ActiveRecord::Migration[6.1]
  def change
    create_table :text_managements do |t|
      t.references :user, null: false, foreign_key: true
      t.references :text, null: false, foreign_key: true

      t.timestamps
    end
    add_index :text_managements, [:user_id, :text_id], unique: true
  end
end
