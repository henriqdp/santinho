class AuthenticationController < ApplicationController
  before_action :set_requester, only: [:logout]

  def login
    @voter = Voter.where(:email => login_params[:email]).first
    if @voter && @voter.authenticate(login_params[:password]) then
      payload = {:token => @voter.token}
      render json: {:voter => payload}
    else
      head :unauthorized and return
    end
  end

  def logout
    @requester.regenerate_token
    head 204 and return
  end

end
