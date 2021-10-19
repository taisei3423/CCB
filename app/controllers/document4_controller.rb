class Document4Controller < ApplicationController
  def top
    @courses = Course.left_joins( :middles ).where( :middles => { :kubun_id => 18 } ).order(:created_at => "desc")
  end

  def search

    if params[:search][:name].present?
      @courses = Course.left_joins( :middles ).where("name like '%" + params[:search][:name] + "%'").where( :middles => { :kubun_id => 18 }).order(:created_at => "desc")
    else
      @courses = Course.left_joins( :middles ).where( :middles => { :kubun_id => 18 } ).order(:created_at => "desc")
    end
    render :top
  end

end
