class SessionController < ApplicationController
  
  skip_before_action :redirect_login, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by(account:params[:account].downcase)
    if user && user.password == params[:password]
      log_in(user)
       redirect_to '/'
    else
      flash[:notice] = "ユーザーネームかパスワードが違います"
      render :new
    end
  end

  def destroy
    log_out
    render :new
  end

  private
  def User_Params
    params.fetch(:User, {}).permit(
      :account, :password, :schoolyear, :username, :nickname
    )
  end

end