class VotersController < ApplicationController
  before_action :set_requester
  before_action :set_voter, only: [:show, :update, :destroy]


  def index
    if @requester.is_admin then
      render json: Voter.all # TODO: paginação e offset
    else
      render json: @requester
    end
  end

  def show
    if @requester.is_admin || @requester.id == @voter.id then
      render json: @voter
    else
      head :unauthorized and return
    end
  end


  # TODO
  def create
    @voter = Voter.new(voter_params)
    if @voter.save then
      render json: @voter
    else
      render json: @voter.errors.messages, status: :bad_request
    end
  end

  # TODO
  def update
    if @requester.is_admin || @requester.id == @voter.id then
      if @voter.update(voter_params) then
        render json: @voter
      else
        render json: @voter.errors.messages, status: :bad_request
      end
    else
      head :unauthorized and return
    end
  end

  #TODO
  def destroy
    if @requester.is_admin || @requester.id == @voter.id then
      if @voter.destroy then
        head :no_content and return
      else
        head :bad_request and return
      end
    else
      head :unauthorized and return
    end
  end

  private
  def set_voter
    @voter = Voter.where(:id => params[:id]).first
    head :not_found and return unless @voter
  end

  def voter_params
    params.require(:user).permit(:first_name, :surname, :email, :city_id, :password)
  end
end
