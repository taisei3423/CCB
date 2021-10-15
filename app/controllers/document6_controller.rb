class Document6Controller < ApplicationController
  def top
    @courses = Course.all
  end
end
