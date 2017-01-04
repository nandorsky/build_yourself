class DaysController < ApplicationController
  before_action :set_day, only: [:show, :edit, :update, :destroy]

  # GET /days
  # GET /days.json
  def index
    @days = Day.all
  end

  # GET /days/1
  # GET /days/1.json
  def show
  end

  # GET /days/new
  def new
    @day = Day.new
  end

  # GET /days/1/edit
  def edit
  end

  # POST /days
  # POST /days.json
  def create
    @week = Week.find(params[:week_id])
    @day = @week.days.build(params[:day].permit(:date))
    @day.save!
    redirect_to day_path(@day), notice: 'Bingo! Your day was successfully posted!'
  end

  # PATCH/PUT /days/1
  # PATCH/PUT /days/1.json
  def update
    if @day.update(day_params)
      redirect_to @day, notice: 'Article was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /days/1
  # DELETE /days/1.json
  def destroy
    @day.destroy
    respond_to do |format|
      format.html { redirect_to days_url, notice: 'Day was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_day
      @day = Day.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def day_params
      params.require(:day).permit(:date, :week_id)
    end
end
