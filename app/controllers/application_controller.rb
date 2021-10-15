class ApplicationController < ActionController::Base
    include SessionsHelper

    before_action :redirect_login

    private

    def redirect_login
      unless logged_in?
        flash[:error] = "エラーメッセージ"
        redirect_to '/login'
      end
    end
end
