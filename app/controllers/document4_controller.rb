class Document4Controller < ApplicationController
  def top
    @courses = Course.all

    if session[:search_name].present?
      @courses = Course.where("name like '%" + session[search_name]+ "%'").order(created_at => "desc")
    elsif session[:search_kinds].present?
      @courses = Course.where("kinds like '%" + session[search_kinds]+ "%'").order(created_at => "desc")
    else
      @courses = Course.all.order(:created_at => "desc")
    end
    @courses = Course.left_joins( :middles ).where( :middles => { :kubun_id => 18 } ).order(:created_at => "desc")
  end

  def search

    if params[:search][:name].present?
      @courses = Course.where("name like '%" + params[:search][:name] + "%'").order(:created_at => "desc")
      session[:search_name] = params[:search][:name]
    elsif params[:search][:kinds].present?
      @courses = Course.where("kinds like '%" + params[:search][:kinds] + "%'").order(:created_at => "desc")
      session[:search_kinds] = params[:search][:kinds]
      session[:search_name] = nil
    else
      @courses = Course.all.order(:created_at => "desc")
      session[:search_name] = nil
      session[:search_kinds] = nil
      @courses = Course.left_joins( :middles ).where("name like '%" + params[:search][:name] + "%'").where( :middles => { :kubun_id => 18 }).order(:created_at => "desc")
    else
      @courses = Course.left_joins( :middles ).where( :middles => { :kubun_id => 18 } ).order(:created_at => "desc")
    end
    render :top
  end

end
