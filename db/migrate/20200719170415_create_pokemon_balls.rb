class CreatePokemonBalls < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemon_balls do |t|
      t.references :user, foreign_key: true
      t.references :ball, foreign_key: true
      t.references :pokemon_status

      t.timestamps
    end
  end
end
