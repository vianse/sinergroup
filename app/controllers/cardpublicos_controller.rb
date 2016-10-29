class CardpublicosController < ApplicationController
  before_action :set_cardpublico, only: [:show, :edit, :update, :destroy]

  # GET /cardpublicos
  # GET /cardpublicos.json
  def index
    @cardpublicos = Cardpublico.all
  end

  # GET /cardpublicos/1
  # GET /cardpublicos/1.json
  def show
  end

  def email
    @productos = Cardpublico.where(:pedidoID => params[:pedidoID])
    RestClient.post "https://api:key-e7d79c66e74391fdf48b657624f23ddc"\
    "@api.mailgun.net/v3/sandboxb9c2dadab0ea49f6b7130d1091646c59.mailgun.org/messages",
    :from => "Sistema de Pedidos <mailgun@sandboxb9c2dadab0ea49f6b7130d1091646c59.mailgun.org>",
    #:to => "proteina@sinergroup.com.mx",
    :to => "proteina@sinergroup.com.mx",
    :subject => "Solicitud de Pedido",
    :html => (render_to_string(template: "../views/cardpublicos/email")).to_str
    redirect_to "http://sinergroup.com.mx/"
  end

  # GET /cardpublicos/new
  def new
    @cardpublico = Cardpublico.new
    @productos = Product.all.pluck(:descripcion)
    @cardpublicos = Cardpublico.where(:pedidoID => params[:pedidoID])
  end

  # GET /cardpublicos/1/edit
  def edit
  end

  # POST /cardpublicos
  # POST /cardpublicos.json
  def create
    @cardpublico = Cardpublico.new(cardpublico_params)

    respond_to do |format|
      if @cardpublico.save
        format.html { redirect_to :back, notice: 'Cardpublico was successfully created.' }
        format.json { render :show, status: :created, location: @cardpublico }
      else
        format.html { render :new }
        format.json { render json: @cardpublico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cardpublicos/1
  # PATCH/PUT /cardpublicos/1.json
  def update
    respond_to do |format|
      if @cardpublico.update(cardpublico_params)
        format.html { redirect_to :back, notice: 'Cardpublico was successfully updated.' }
        format.json { render :show, status: :ok, location: @cardpublico }
      else
        format.html { render :edit }
        format.json { render json: @cardpublico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cardpublicos/1
  # DELETE /cardpublicos/1.json
  def destroy
    @cardpublico.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Cardpublico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cardpublico
      @cardpublico = Cardpublico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cardpublico_params
      params.require(:cardpublico).permit(:pedidoID, :producto, :cantidad, :precio, :peso)
    end
end
