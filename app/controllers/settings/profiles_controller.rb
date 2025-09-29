class Settings::ProfilesController < AuthController
  layout "settings"

  def show
  end

  def update
    if Current.user.update(profiule_params)
      redirect_to settings_profile_path, status: :see_other, notice: "Your profile updated succesfully"
    else
      render :show, status: :unprocessable_entity
    end
  end

  private
    def profiule_params
      params.expect(user: [ :first_name, :last_name ])
    end
end