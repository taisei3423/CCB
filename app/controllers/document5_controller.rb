class Document5Controller < ApplicationController
  def top

    if params[:document].present?
      @courses = Course.left_joins( :middles ).where( :middles => { :kubun_id => [3,4,5] } ).order(:created_at => "desc")
    elsif ! session[:search_kinds].nil?
      @courses = Course.where("kinds like '%" + session[:search_kinds] + "%'").order(:created_at => "desc")
    elsif ! session[:search_kinds3].nil?
      @courses = Course.where("kinds like '%" + session[:search_kinds3] + "%'").order(:created_at => "desc")
    elsif ! session[:search_name].nil?
      @courses = Course.where("name like '%" + session[:search_name] + "%'").order(:created_at => "desc")
    else
      @courses = Course.left_joins( :middles ).where( :middles => { :kubun_id => [5] } ).order(:created_at => "desc")
    end
  end
end
