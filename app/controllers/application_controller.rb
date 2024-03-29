class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) do |user_params|
	    user_params.permit(:email)
	  end

	  devise_parameter_sanitizer.for(:account_update) do |user_params|
	  	user_params.permit(:name, :about, :email, :url, :password, :password_confirmation, :current_password)
	  end
  end
end
