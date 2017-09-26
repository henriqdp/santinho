class StatesController < ApplicationController
  def index
    render json: State.all
  end

  def show
    @state = State.where(:id => params[:id])
    if @state
      render json: @state
    else
      head :not_found and return
    end
  end

end
