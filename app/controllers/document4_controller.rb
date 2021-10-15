class Document4Controller < ApplicationController
  def top
    @courses = Course.all
  end

  def search
    @courses = Course.all

    if params[:search][:name].present?
      @courses = Course.where("name like '%" + params[:search][:name] + "%'").order(:created_at => "desc")
    else
      @courses = Course.all.order(:created_at => "desc")
    end
    render :top
  end
end
