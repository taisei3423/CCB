class Document5Controller < ApplicationController
  def top
    @courses = Course.all
  end
end
