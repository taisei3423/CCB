class Document4Controller < ApplicationController
  def top
    @courses = Course.left_joins( :middles ).where( :middles => { :kubun_id => 18} ).order(:created_at => "desc")
  end

  def search

    if params[:search][:name].present?
      @courses = Course.left_joins( :middles ).where("name like '%" + params[:search][:name] + "%'").where( :middles => { :kubun_id => 18 }).order(:created_at => "desc")
      session[:search_name] = params[:search][:name]
    elsif params[:search][:kinds].present?
      @courses = Course.left_joins( :middles ).where("kinds like '%" + params[:search][:kinds] + "%'").where( :middles => { :kubun_id => 18 }).order(:created_at => "desc")
      session[:search_kinds] = params[:search][:kinds]
      session[:search_name] = nil
    else
      @courses = Course.left_joins( :middles ).where( :middles => { :kubun_id => 18 } ).order(:created_at => "desc")
      session[:search_name] = nil
      session[:search_kinds] = nil
    end
    render :top
  end

end
