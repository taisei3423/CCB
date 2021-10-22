class Document6Controller < ApplicationController
  def top
    @courses = Course.left_joins( :middles ).where( :middles => { :kubun_id => 4 } ).order(:created_at => "desc")
  end
end
