class PokemonsController < ApplicationController
  def new
    @pokemon = Pokemon.new

    @ball = Ball.all
  end

  def create
    Pokemon.create(pokemen_params)
  end

  private
  def pokemon_params
    params.require(:pokemon).permit(:pkmane, :ball_id).merge(user_id: current_user.id)
  end
end
