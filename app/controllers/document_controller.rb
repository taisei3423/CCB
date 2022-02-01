require "csv"

class DocumentController < ApplicationController
  def top
    @courses = Course.all
  end

  def search
    if params[:kubun][:id].present?
      session[:search_kubun] = params[:kubun][:id]
    else
      session[:search_kubun] = nil
    end
    redirect_to controller: :document9, action: :top
  end

  def edit
  end

  def update
    @cnt = 0
    if params[:filename].present?
      CSV.foreach(params[:filename].path) do |row|
        @kubun = Kubun.find_by(code: row[5])
        if ! @kubun.nil?
          @course = Course.create(:name => row[0], :kinds => row[1], :year => row[2], :contents => row[3], :remarks => row[4])
          Middle.create(:kubun_id => @kubun.id, :course_id => @course.id)
          @cnt = @cnt + 1
        end
      end
    end
    if @cnt == 0
      flash[:notice] = '1件も登録できませんでした。データを確認してください。'
    else
      flash[:notice] = @cnt.to_S + '件登録されました。'
    end
    render :edit
  end
end
