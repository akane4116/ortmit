class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  
  private
  
  def require_login
   unless logged_in?
     flash[:error] = "ログインが必要です"
    redirect_to sessions_new_url
   end 
  end
  
  
  protect_from_forgery with: :exception
  add_flash_types :success, :info, :warning, :danger
  
    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end
   
    def logged_in?
       !current_user.nil?
    end
    
end
