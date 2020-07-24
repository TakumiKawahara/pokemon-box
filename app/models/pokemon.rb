class Pokemon < ApplicationRecord
  has_many :pokemon_balls, dependent: :destroy
  has_many :balls, through: :pokemon_balls
  # accepts_nested_attributes_for :pokemon_balls, allow_destroy: true
end
