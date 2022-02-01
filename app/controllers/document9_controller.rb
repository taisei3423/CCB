class Document9Controller < ApplicationController
  def top

    if ! session[:search_kubun].nil?
      @courses = Course.left_joins( :middles ).where( :middles => { :kubun_id => session[:search_kubun]} ).order(:created_at => "desc")
    end
  end
end
