class Document5Controller < ApplicationController
  def top

    if ! session[:search_kinds].nil?
      @courses = Course.where("kinds like '%" + params[:search][:kinds] + "%'").order(:created_at => "desc")
    elsif ! session[:search_kinds3].nil?
      @courses = Course.where("kinds like '%" + params[:search][:kinds3] + "%'").order(:created_at => "desc")
    elsif ! session[:search_name].nil?
      @courses = Course.where("name like '%" + params[:search][:name] + "%'").order(:created_at => "desc")
    else
      @courses = Course.all.order(:created_at => "desc")
    end
    @courses = Course.left_joins( :middles ).where( :middles => { :kubun_id => [3,4,5] } ).order(:created_at => "desc")
  end
end
