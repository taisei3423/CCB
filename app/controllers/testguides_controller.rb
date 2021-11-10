class TestguidesController < ApplicationController
  before_action :set_testguide, only: %i[ show edit update destroy ]

  # GET /testguides or /testguides.json
  def index
    @user = current_user
    @testguides = Testguide.all
  end

  # GET /testguides/1 or /testguides/1.json
  def show
  end

  # GET /testguides/new
  def new
    @testguide = Testguide.new
  end

  # GET /testguides/1/edit
  def edit
  end

  # POST /testguides or /testguides.json
  def create
    @testguide = Testguide.new(testguide_params)
    @testguide.filename = nil

    respond_to do |format|
      if @testguide.save
        if params[:testguide][:filename].present?
          @testguide.filename = 'testguide' + @testguide.id.to_s + File.extname(params[:testguide][:filename].original_filename)
       
          File.open("app/assets/images/ #{@testguide.filename}",'w+b'){|f| f.write(params[:testguide][:filename].read)}

          @testguide.save
        end
        format.html { redirect_to @testguide, notice: "作成しました" }
        format.json { render :show, status: :created, location: @testguide }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @testguide.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testguides/1 or /testguides/1.json
  def update
    respond_to do |format|

      @testguide = Testguide.find(@testguide.id)

      if params[:testguide][:filename].present?
        @testguide.filename = 'testguide' + @testguide.id.to_s + File.extname(params[:testguide][:filename].original_filename)
     
        File.open("app/assets/images/ #{@testguide.filename}",'w+b'){|f| f.write(params[:testguide][:filename].read)}

      end

      if @testguide.save
        format.html { redirect_to @testguide, notice: "更新しました" }
        format.json { render :show, status: :ok, location: @testguide }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @testguide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testguides/1 or /testguides/1.json
  def destroy
    if @testguide.filename.present?
      File.delete("app/assets/images/ #{@testguide.filename}")
    end
    @testguide.destroy
    respond_to do |format|
      format.html { redirect_to testguides_url, notice: "削除しました" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testguide
      @testguide = Testguide.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def testguide_params
      params.require(:testguide).permit(:filename, :year)
    end
end
