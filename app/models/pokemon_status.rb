class PokemonStatus < ApplicationRecord
  has_many :pokemon_balls
  has_many :balls, through: :pokemon_balls
end
