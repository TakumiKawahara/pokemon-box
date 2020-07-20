class Ball < ApplicationRecord
  has_many :pokemon_balls
  has_many :pokemon_statuses, through: :pokemons_balls
  mount_uploader :image, ImageUploader
end
