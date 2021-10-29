class Document7Controller < ApplicationController
  def top

    if params[:document].present?
      @courses = Course.left_joins( :middles ).where( :middles => { :kubun_id => [6,7,8] } ).order(:created_at => "desc")
    elsif ! session[:search_kinds2].nil?
      @courses = Course.where("kinds like '%" + session[:search_kinds2] + "%'").order(:created_at => "desc")
    elsif ! session[:search_kinds4].nil?
      @courses = Course.where("kinds like '%" + session[:search_kinds4] + "%'").order(:created_at => "desc")
    elsif ! session[:search_name2].nil?
      @courses = Course.where("name like '%" + session[search_name2] + "%'").order(:created_at => "desc")
    else
      @courses = Course.left_joins( :middles ).where( :middles => { :kubun_id => [8] } ).order(:created_at => "desc")
    end
  end
end
