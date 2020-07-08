class PokemonStatusesController < ApplicationController

  def index
    @pokemons = PokemonStatus.all.page(params[:page]).per(50)
  end

end
