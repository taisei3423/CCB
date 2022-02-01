class Document8Controller < ApplicationController
  def top

    if params[:document].present?
      @courses = Course.left_joins( :middles ).where( :middles => { :kubun_id => 7 } ).order(:created_at => "desc")
      @name = "国公立"
    elsif ! session[:search_kinds2].nil?
      @courses = Course.left_joins( :middles ).where("kinds like '%" + session[:search_kinds2] + "%'").where( :middles => { :kubun_id => 8 }).order(:created_at => "desc")
    elsif ! session[:search_name2].nil?
      @courses = Course.left_joins( :middles ).where("name like '%" + session[:search_name2] + "%'").where( :middles => { :kubun_id => 8 }).order(:created_at => "desc")
    else
      @courses = Course.left_joins( :middles ).where( :middles => { :kubun_id => [8] } ).order(:created_at => "desc")
    end
  end
end
