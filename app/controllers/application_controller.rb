class ApplicationController < ActionController::Base
  # include Authentication
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :require_authentication

  private

  def require_authentication
    redirect_to new_session_path unless Current.session
  end
end
