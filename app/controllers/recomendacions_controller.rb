class RecomendacionsController < ApplicationController
  before_action :set_recomendacion, only: [:show, :edit, :update, :destroy]

  # GET /recomendacions
  # GET /recomendacions.json
  def index
    @recomendacions = Recomendacion.all
  end

  # GET /recomendacions/1
  # GET /recomendacions/1.json
  def show
  end

  # GET /recomendacions/new
  def new
    @recomendacion = Recomendacion.new
  end

  # GET /recomendacions/1/edit
  def edit
  end

  # POST /recomendacions
  # POST /recomendacions.json
  def create
    @recomendacion = Recomendacion.new(recomendacion_params)

    respond_to do |format|
      if @recomendacion.save
        format.html { redirect_to "/", notice: 'Recomendacion was successfully created.' }
        format.json { render :show, status: :created, location: @recomendacion }
      else
        format.html { render :new }
        format.json { render json: @recomendacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recomendacions/1
  # PATCH/PUT /recomendacions/1.json
  def update
    respond_to do |format|
      if @recomendacion.update(recomendacion_params)
        format.html { redirect_to @recomendacion, notice: 'Recomendacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @recomendacion }
      else
        format.html { render :edit }
        format.json { render json: @recomendacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recomendacions/1
  # DELETE /recomendacions/1.json
  def destroy
    @recomendacion.destroy
    respond_to do |format|
      format.html { redirect_to recomendacions_url, notice: 'Recomendacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recomendacion
      @recomendacion = Recomendacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recomendacion_params
      params.require(:recomendacion).permit(:userID, :leido)
    end
end
