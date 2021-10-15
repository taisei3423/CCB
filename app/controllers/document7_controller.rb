class Document7Controller < ApplicationController
  def top
    @courses = Course.all
  end
end
