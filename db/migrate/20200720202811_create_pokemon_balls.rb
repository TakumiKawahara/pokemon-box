class CreatePokemonBalls < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemon_balls do |t|
      t.references :ball, foreign_key: true
      t.references :pokemon

      t.timestamps
    end
  end
end
