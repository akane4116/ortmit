class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  
  def index
  end
  
  
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
     log_in user
     redirect_to root_path, success: 'ログイン成功'
    else
      flash.now[:danger] = 'ログイン失敗'
      render :new
    end
  end
  
  
  private
  def log_in(user)
    session[:user_id] = user.id
  end
  
  def session_params
    params.require(:session).permit(:email, :password)
  end
  
end

