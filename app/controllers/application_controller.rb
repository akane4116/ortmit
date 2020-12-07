class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller? 
  
  protect_from_forgery with: :exception
  
  add_flash_types :success, :info, :warning, :danger 
 
 
 #helper_method :current_user, :logged_in?
 
 
  #def current_user
   # @current_user ||= User.find_by(id: session[:user_id])
  #end
  
  #def logged_in?
  #  !current_user.nil?
  #end


 private

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys:[:name])
    end
 
end

