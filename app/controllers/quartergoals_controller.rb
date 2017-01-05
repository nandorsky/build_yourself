class QuartergoalsController < ApplicationController
  before_action :set_quartergoal, only: [:show, :edit, :update, :destroy]

  # GET /quartergoals
  # GET /quartergoals.json
  def index
    @quartergoals = Quartergoal.all
  end

  # GET /quartergoals/1
  # GET /quartergoals/1.json
  def show
    @quartergoal = Quartergoal.find(params[:id])
  end

  # GET /quartergoals/new
  def new
    @quartergoal = current_user.quartergoals.build
  end

  # GET /quartergoals/1/edit
  def edit
  end

  # POST /quartergoals
  # POST /quartergoals.json
  def create
    @quartergoal = current_user.quartergoals.build(quartergoal_params)
    if @quartergoal.save
      redirect_to @quartergoal, notice: 'Booya! Your article was successfully submitted.'
    else
      render :new
    end
  end

  # PATCH/PUT /quartergoals/1
  # PATCH/PUT /quartergoals/1.json
  def update
    respond_to do |format|
      if @quartergoal.update(quartergoal_params)
        format.html { redirect_to @quartergoal, notice: 'Quartergoal was successfully updated.' }
        format.json { render :show, status: :ok, location: @quartergoal }
      else
        format.html { render :edit }
        format.json { render json: @quartergoal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quartergoals/1
  # DELETE /quartergoals/1.json
  def destroy
    @quartergoal.destroy
    respond_to do |format|
      format.html { redirect_to quartergoals_url, notice: 'Quartergoal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quartergoal
      @quartergoal = Quartergoal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quartergoal_params
      params.require(:quartergoal).permit(:goal, :user_id)
    end
end
