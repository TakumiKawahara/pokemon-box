class PokemonBallsController < ApplicationController
  def index
  end

  def new
    @balls = Ball.all
  end

  def create
  end
end
