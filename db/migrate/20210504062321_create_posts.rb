class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :text, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
    add_index :posts, [:text_id, :movie_id], unique: true
  end
end
