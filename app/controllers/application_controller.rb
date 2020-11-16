class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  
  private
  
  def require_login
    
    redirect_to sessions_new_url
  end
  
  
  protect_from_forgery with: :exception
  
  add_flash_types :success, :info, :warning, :danger
end
