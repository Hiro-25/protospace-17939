class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :user_name, :profile, :affiliation, :position])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :user_name, :profile, :affiliation, :position])
  end
end