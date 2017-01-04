class GratefulsController < ApplicationController
  before_action :set_grateful, only: [:show, :edit, :update, :destroy]

  # GET /gratefuls
  # GET /gratefuls.json
  def index
    @gratefuls = Grateful.all
  end

  # GET /gratefuls/1
  # GET /gratefuls/1.json
  def show
  end

  # GET /gratefuls/new
  def new
    @grateful = current_user.gratefuls.build
  end

  # GET /gratefuls/1/edit
  def edit
  end

  # POST /gratefuls
  # POST /gratefuls.json
  def create
    @day = Day.find(params[:day_id])
    @grateful = @day.gratefuls.build(params[:grateful].permit(:comment))
    @grateful.save!
    redirect_to day_path(@day), notice: 'Bingo! Your day was successfully posted!'
  end

  # PATCH/PUT /gratefuls/1
  # PATCH/PUT /gratefuls/1.json
  def update
    respond_to do |format|
      if @grateful.update(grateful_params)
        format.html { redirect_to @grateful, notice: 'Grateful was successfully updated.' }
        format.json { render :show, status: :ok, location: @grateful }
      else
        format.html { render :edit }
        format.json { render json: @grateful.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gratefuls/1
  # DELETE /gratefuls/1.json
  def destroy
    @grateful.destroy
    respond_to do |format|
      format.html { redirect_to gratefuls_url, notice: 'Grateful was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grateful
      @grateful = Grateful.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grateful_params
      params.require(:grateful).permit(:day_id, :comment)
    end
end
