# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
 skip_before_action :require_login, only: [:new, :create]
  
  def index
  end
  
  
  def new
    super
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
  
  def destroy
    log_out
    redirect_to root_url, info:'ログアウト'
  end
  
  private
  def log_in(user)
    session[:user_id] = user.id
  end
  
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
  
  
  def session_params
    params.require(:session).permit(:email, :password)
  end
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  

  # POST /resource/sign_in


  # DELETE /resource/sign_out

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end