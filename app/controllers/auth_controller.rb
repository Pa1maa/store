class AuthController < ApplicationController
  include Authentication
  before_action :require_authentication
end