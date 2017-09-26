class CitiesController < ApplicationController

  # TODO: arrumar
  def index
    render json: City.limit(15)
  end

  def show
    puts params.inspect
    @city = City.where(:id => params[:id]).first
    if @city then
      render json: @city
    else
      head :not_found and return
    end
  end
end
