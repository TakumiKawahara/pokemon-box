class Ball < ApplicationRecord
  has_many :pokemon_balls, dependent: :destroy
  has_many :pokemons, through: :pokemon_balls
  mount_uploader :image, ImageUploader
end
