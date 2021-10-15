class Document8Controller < ApplicationController
  def top
    @courses = Course.all
  end
end
