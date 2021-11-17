class Document7Controller < ApplicationController
  def top
    @courses = Course.left_joins( :middles ).where( :middles => { :kubun_id => [6,7,8] } ).order(:created_at => "desc")
  end

  def search

    if params[:search][:name4].present?
      @courses = Course.left_joins( :middles ).where("name like '%" + params[:search][:name4] + "%'").where( :middles => { :kubun_id => [6,7,8] }).order(:created_at => "desc")
      session[:search_name4] = params[:search][:name4]
    elsif params[:search][:kinds].present?
      @courses = Course.left_joins( :middles ).where("kinds like '%" + params[:search][:kinds4] + "%'").where( :middles => { :kubun_id => [6,7,8] }).order(:created_at => "desc")
      session[:search_kinds4] = params[:search][:kinds4]
      session[:search_name4] = nil
    else
      @courses = Course.left_joins( :middles ).where( :middles => { :kubun_id => [6,7,8] } ).order(:created_at => "desc")
      session[:search_name4] = nil
      session[:search_kinds4] = nil
    end
    render :top
  end
end
