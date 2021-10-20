class Document7Controller < ApplicationController
  def top

    if ! session[:search_kinds2].nil?
      @courses = Course.where("kinds like '%" + params[:search][:kinds2] + "%'").order(:created_at => "desc")
    elsif ! session[:search_kinds4].nil?
      @courses = Course.where("kinds like '%" + params[:search][:kinds4] + "%'").order(:created_at => "desc")
    elsif ! session[:search_name2].nil?
      @courses = Course.where("name like '%" + params[:search][:search_name2] + "%'").order(:created_at => "desc")
    else
      @courses = Course.all.order(:created_at => "desc")
    end
  end
end
