class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by(account:params[:account].downcase)
    if user && user.password == params[:password]
      def log_in(user)
        session[:user_id] = user.user_id
      end
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
