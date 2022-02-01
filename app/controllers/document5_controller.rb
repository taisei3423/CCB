class Document5Controller < ApplicationController
  def top
    @courses = Course.left_joins( :middles ).where( :middles => { :kubun_id => [3,4,5] } ).order(:created_at => "desc")
  end

  def search

    if params[:search][:name3].present?
      @courses = Course.left_joins( :middles ).where("name like '%" + params[:search][:name3] + "%'").where( :middles => { :kubun_id => [3,4,5] }).order(:created_at => "desc")
      session[:search_name3] = params[:search][:name3]
    elsif params[:search][:kinds3].present?
      @courses = Course.left_joins( :middles ).where("kinds like '%" + params[:search][:kinds3] + "%'").where( :middles => { :kubun_id => [3,4,5] }).order(:created_at => "desc")
      session[:search_kinds3] = params[:search][:kinds3]
      session[:search_name3] = nil
    else
      @courses = Course.left_joins( :middles ).where( :middles => { :kubun_id => [3,4,5] } ).order(:created_at => "desc")
      session[:search_name3] = nil
      session[:search_kinds3] = nil
    end
    render :top
  end
end
