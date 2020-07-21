class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :pkmane
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
