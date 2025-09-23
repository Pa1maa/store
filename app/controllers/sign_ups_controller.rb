class SignUpsController < ApplicationController
  # def self.unauthenticated_access_only(**options)
  #   skip_before_action :require_authentication, **options
  #   before_action -> { redirect_to root_path if authenticated? }, **options
  # end

  # unauthenticated_access_only

  # skip_before_action :require_authentication, only: [:show, :create]

  def show
    @user = User.new
  end

  def create
    @user = User.new(sign_up_params)
    if @user.save
      start_new_session_for(@user)
      redirect_to root_path
    else
      render :show, status: :unprocessable_entity
    end
  end

  private
    def sign_up_params
      params.expect(user: [ :first_name, :last_name, :email_address, :password, :password_confirmation ])
    end
end