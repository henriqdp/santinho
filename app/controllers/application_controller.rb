class ApplicationController < ActionController::API
  def set_requester
    @requester = Voter.where(:token => request.headers["token"]).first

    head :unauthorized and return unless @requester
  end

  private
  def login_params
    params.require(:user).permit(:email, :password)
  end
end
