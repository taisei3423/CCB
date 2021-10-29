class UserController < ApplicationController
  def top
    @user = User.find(current_user.id)
    flash[:user_profile] = ""
  end

  def update
    @user = User.find(current_user.id)
    @user.nickname = params[:user][:nickname]
    @user.detail = params[:user][:detail]
    @user.course = params[:user][:course]
    flash[:user_profile] = ""
    if @user.save
      flash[:user_profile] = "プロフィールを更新しました"
      render :top
    else
      render :top
    end
  end

  private
  def user_params
    params.require(:user).permit(:nickname, :course, :detail)
  end

end
