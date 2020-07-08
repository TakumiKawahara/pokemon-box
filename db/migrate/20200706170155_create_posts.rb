class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :user, type: :bigint, null: false, foreign_key: true
      t.string :title, null: false
      t.text :text, null: false

      t.timestamps
    end
  end
end
