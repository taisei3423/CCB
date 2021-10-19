class Document7Controller < ApplicationController
  def top
    @courses = Course.left_joins( :middles ).where( :middles => { :kubun_id => [6,7,8] } ).order(:created_at => "desc")
  end
end
