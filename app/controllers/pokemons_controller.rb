class PokemonsController < ApplicationController
  def new
    raw_response = Faraday.get "https://pokeapi.co/api/v2/pokemon/"
    @response = JSON.parse(raw_response.body)

    @response_image = Faraday.get "https://github.com/fanzeyi/pokemon.json/blob/master/images/001"
  end
end
