class SchedulesController < ApplicationController
  before_action :set_schedule, only: %i[ show edit update destroy ]

  # GET /schedules or /schedules.json
  def index
    @user = current_user

    if @user.schoolyear == 1
      @schedule = Schedule.where("year = '1'")
    elsif @user.schoolyear == 2
      @schedule = Schedule.where("year = '2'")
    elsif @user.schoolyear == 3
      @schedule = Schedule.where("year = '3'")
    else
      @schedule = Schedule.all
    end
  end

  # GET /schedules/1 or /schedules/1.json
  def show
    @user = current_user
  end

  # GET /schedules/new
  def new
    @schedule = Schedule.new
  end

  # GET /schedules/1/edit
  def edit
  end

  # POST /schedules or /schedules.json
  def create
    @schedule = Schedule.new(schedule_params)
    @schedule.filename = nil

    respond_to do |format|
      if @schedule.save
         if params[:schedule][:filename].present?
           @schedule.filename = 'schedule' + @schedule.id.to_s + File.extname(params[:schedule][:filename].original_filename)
        
           File.open("app/assets/images/ #{@schedule.filename}",'w+b'){|f| f.write(params[:schedule][:filename].read)}

           @schedule.save
         end
        format.html { redirect_to @schedule, notice: "作成しました" }
        format.json { render :show, status: :created, location: @schedule }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedules/1 or /schedules/1.json
  def update
    respond_to do |format|

      @schedule = Schedule.find(@schedule.id)

      if params[:schedule][:filename].present?

        @schedule.filename = 'schedule' + @schedule.id.to_s + File.extname(params[:schedule][:filename].original_filename)
     
        File.open("app/assets/images/ #{@schedule.filename}",'w+b'){|f| f.write(params[:schedule][:filename].read)}

      end


      if @schedule.save
        format.html { redirect_to @schedule, notice: "更新しました" }
        format.json { render :show, status: :ok, location: @schedule }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedules/1 or /schedules/1.json
  def destroy
    if @schedule.filename.present?
      File.delete("app/assets/images/ #{@schedule.filename}")
    end
    @schedule.destroy
    respond_to do |format|
      format.html { redirect_to schedules_url, notice: "削除しました" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def schedule_params
      params.require(:schedule).permit(:filename, :year)
    end
end
