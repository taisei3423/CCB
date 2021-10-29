class DocumentController < ApplicationController
  def top
    @courses = Course.all
  end

  def search
    if params[:kubun][:id].present?
      session[:search_kubun] = params[:kubun][:id]
    else
      session[:search_kubun] = nil
    end
    redirect_to controller: :document9, action: :top
  end
end
