class Document2Controller < ApplicationController
  def top
    @courses = Course.all
  end

  def search
    if params[:search][:kinds].present?
      session[:search_kinds] = params[:search][:kinds]
    elsif params[:search][:kinds2].present?
      session[:search_kinds2] = params[:search][:kinds2] 
      session[:search_kinds] = nil
    elsif params[:search][:kinds3].present?
      session[:search_kinds3] = params[:search][:kinds3] 
      session[:search_kinds] = nil
      session[:search_kinds2] = nil
    elsif params[:search][:kinds4].present?
      session[:search_kinds4] = params[:search][:kinds4] 
      session[:search_kinds] = nil
      session[:search_kinds2] = nil
      session[:search_kinds3] = nil
    elsif params[:search][:name].present?
      session[:search_name] = params[:search][:name]
      session[:search_kinds] = nil 
      session[:search_kinds2] = nil
      session[:search_kinds3] = nil
      session[:search_kinds4] = nil
    elsif params[:search][:name2].present?
      session[:search_name2] = params[:search][:name2]
      session[:search_kinds] = nil 
      session[:search_kinds2] = nil
      session[:search_kinds3] = nil
      session[:search_kinds4] = nil
      session[:search_name] = nil
    else
      session[:search_kinds] = nil
      session[:search_kinds2] = nil
      session[:search_kinds3] = nil 
      session[:search_kinds4] = nil 
      session[:search_kinds5] = nil 
      session[:search_name] = nil
      session[:search_name2] = nil
    end
    if params[:kubun][0,2] == "22"
      redirect_to controller: :document7, action: :top
      return
    end
    redirect_to controller: :document5, action: :top
  end
end