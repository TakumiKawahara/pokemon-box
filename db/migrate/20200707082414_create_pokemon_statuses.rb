class CreatePokemonStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemon_statuses do |t|
      t.integer :no
      t.string :name
      t.string :type1
      t.string :type2
      t.integer :hp
      t.integer :attack
      t.integer :deffence
      t.integer :special_attack
      t.integer :special_deffence
      t.integer :speed
      t.integer :total

      t.timestamps
    end
  end
end
