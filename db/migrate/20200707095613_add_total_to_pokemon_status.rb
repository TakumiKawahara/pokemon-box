class AddTotalToPokemonStatus < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemon_statuses, :total, :integer
  end
end
