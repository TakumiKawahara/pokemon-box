class PokemonBall < ApplicationRecord
  belongs_to :ball
  belongs_to :pokemon
  validates :ball_id, presence:true
  validates :pokemon_id, presence:true
end
