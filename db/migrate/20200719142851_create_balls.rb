class CreateBalls < ActiveRecord::Migration[5.2]
  def change
    create_table :balls do |t|
      t.string :ball_name
      t.string :image

      t.timestamps
    end
  end
end
