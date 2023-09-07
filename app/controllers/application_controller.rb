class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_devise_parameters, if: :devise_controller?

  def configure_devise_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user|
      user.permit(:name, :email, :password, :password_confirmation)
    end
  end

  def set_current_user
    @current_user = current_user
  end
end