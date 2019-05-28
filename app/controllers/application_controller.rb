class ApplicationController < ActionController::Base

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :image, :profile])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :image, :profile])
  end
end
