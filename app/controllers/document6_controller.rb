class Document6Controller < ApplicationController
  def top

    if params[:document].present?
      @courses = Course.left_joins( :middles ).where( :middles => { :kubun_id => 4 } ).order(:created_at => "desc")
    elsif ! session[:search_kinds].nil?
      @courses = Course.left_joins( :middles ).where("kinds like '%" + session[:search_kinds] + "%'").where( :middles => { :kubun_id => 5 }).order(:created_at => "desc")
    elsif ! session[:search_name].nil?
      @courses = Course.left_joins( :middles ).where("name like '%" + session[:search_name] + "%'").where( :middles => { :kubun_id => 5 }).order(:created_at => "desc")
    else
      @courses = Course.left_joins( :middles ).where( :middles => { :kubun_id => [5] } ).order(:created_at => "desc")
    end
  end
end
