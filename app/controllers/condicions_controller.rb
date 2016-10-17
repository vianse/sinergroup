class CondicionsController < ApplicationController
  before_action :set_condicion, only: [:show, :edit, :update, :destroy]

  # GET /condicions
  # GET /condicions.json
  def index
    @condicions = Condicion.all
  end

  # GET /condicions/1
  # GET /condicions/1.json
  def show
  end

  # GET /condicions/new
  def new
    @condicion = Condicion.new
  end

  # GET /condicions/1/edit
  def edit
  end

  # POST /condicions
  # POST /condicions.json
  def create
    @condicion = Condicion.new(condicion_params)

    respond_to do |format|
      if @condicion.save
        format.html { redirect_to "/", notice: 'Condicion was successfully created.' }
        format.json { render :show, status: :created, location: @condicion }
      else
        format.html { render :new }
        format.json { render json: @condicion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /condicions/1
  # PATCH/PUT /condicions/1.json
  def update
    respond_to do |format|
      if @condicion.update(condicion_params)
        format.html { redirect_to @condicion, notice: 'Condicion was successfully updated.' }
        format.json { render :show, status: :ok, location: @condicion }
      else
        format.html { render :edit }
        format.json { render json: @condicion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /condicions/1
  # DELETE /condicions/1.json
  def destroy
    @condicion.destroy
    respond_to do |format|
      format.html { redirect_to condicions_url, notice: 'Condicion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_condicion
      @condicion = Condicion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def condicion_params
      params.require(:condicion).permit(:userID, :leido)
    end
end
