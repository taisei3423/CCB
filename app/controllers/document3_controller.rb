class Document3Controller < ApplicationController
  def top
    @courses = Course.all
  end
end
