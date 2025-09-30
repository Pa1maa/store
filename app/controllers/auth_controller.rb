class AuthController < ApplicationController
  include Authentication
  before_action :require_authentication

  def require_authentication
    redirect_to new_session_path unless authenticated?
  end
end