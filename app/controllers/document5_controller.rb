class Document5Controller < ApplicationController
  def top
    @courses = Course.left_joins( :middles ).where( :middles => { :kubun_id => [3,4,5] } ).order(:created_at => "desc")
  end
end
