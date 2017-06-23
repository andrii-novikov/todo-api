class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  include CanCan::ControllerAdditions

  def current_user
    User.find(1)
  end

  respond_to :json
end
