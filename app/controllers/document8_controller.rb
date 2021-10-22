class Document8Controller < ApplicationController
  def top
    @courses = Course.left_joins( :middles ).where( :middles => { :kubun_id => 7 } ).order(:created_at => "desc")
  end
end
