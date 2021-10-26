class Document3Controller < ApplicationController
  def top
    @courses = Course.left_joins( :middles ).where( :middles => { :kubun_id => 1 } ).order(:created_at => "desc")
  end
end
