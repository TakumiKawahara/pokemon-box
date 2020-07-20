class PokemonBall < ApplicationRecord
  belongs_to :user
  belongs_to :ball
  belongs_to :pokemon_status
end
