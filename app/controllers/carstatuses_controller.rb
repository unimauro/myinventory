class CarstatusesController < ApplicationController
  before_action :set_carstatus, only: %i[ show edit update destroy ]

  # GET /carstatuses or /carstatuses.json
  def index
    @carstatuses = Carstatus.all
  end

  # GET /carstatuses/1 or /carstatuses/1.json
  def show
  end

  # GET /carstatuses/new
  def new
    @carstatus = Carstatus.new
  end

  # GET /carstatuses/1/edit
  def edit
  end

  # POST /carstatuses or /carstatuses.json
  def create
    @carstatus = Carstatus.new(carstatus_params)

    respond_to do |format|
      if @carstatus.save
        format.html { redirect_to carstatus_url(@carstatus), notice: "Carstatus was successfully created." }
        format.json { render :show, status: :created, location: @carstatus }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @carstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carstatuses/1 or /carstatuses/1.json
  def update
    respond_to do |format|
      if @carstatus.update(carstatus_params)
        format.html { redirect_to carstatus_url(@carstatus), notice: "Carstatus was successfully updated." }
        format.json { render :show, status: :ok, location: @carstatus }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @carstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carstatuses/1 or /carstatuses/1.json
  def destroy
    @carstatus.destroy

    respond_to do |format|
      format.html { redirect_to carstatuses_url, notice: "Carstatus was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carstatus
      @carstatus = Carstatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def carstatus_params
      params.require(:carstatus).permit(:name)
    end
end
