class PedidosController < ApplicationController
  before_action :set_pedido, only: [:show, :edit, :update, :destroy]

  # GET /pedidos
  # GET /pedidos.json
  def index
    @pedidos = Pedido.where(:userID => current_user.id).order("id desc")
  end

  # GET /pedidos/1
  # GET /pedidos/1.json
  def show
  end
  def socios
  end
  def aislado
  end
  def concentrado
  end
  def complementos
  end

  # GET /pedidos/new
  def new
    @pedido = Pedido.new
  end

  # GET /pedidos/1/edit
  def edit
      @car = Car.new
      @cars = Car.where(:pedidoID => params[:id])
      @productos = Product.all.pluck(:descripcion)
  end

  # POST /pedidos
  # POST /pedidos.json
  def create
    @pedido = Pedido.new(pedido_params)

    respond_to do |format|
      if @pedido.save
        format.html { redirect_to '/', notice: 'Pedido was successfully created.' }
        format.json { render :show, status: :created, location: @pedido }
      else
        format.html { render :new }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedidos/1
  # PATCH/PUT /pedidos/1.json
  def update
    @productos = Car.where(:pedidoID => params[:id])
    respond_to do |format| 
      if @pedido.update(pedido_params)
        
        format.html { redirect_to "/", notice: 'Pedido was successfully updated.' }
        format.json { render :show, status: :ok, location: @pedido }
        RestClient.post "https://api:key-e7d79c66e74391fdf48b657624f23ddc"\
    "@api.mailgun.net/v3/sandboxb9c2dadab0ea49f6b7130d1091646c59.mailgun.org/messages",
    :from => "Sistema de Pedidos <mailgun@sandboxb9c2dadab0ea49f6b7130d1091646c59.mailgun.org>",
    :to => "proteina@sinergroup.com.mx",
    #:to => "juancarlos.santiago@vianse.mx",
    :subject => "Solicitud de Pedido",
    :html => (render_to_string(template: "../views/pedidos/email")).to_str
      else
        format.html { render :edit }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedidos/1
  # DELETE /pedidos/1.json
  def destroy
    @pedido.destroy
    respond_to do |format|
      format.html { redirect_to "/", notice: 'Pedido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def email

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido
      @pedido = Pedido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedido_params
      params.require(:pedido).permit(:titulo, :estatus, :comentarios, :envioC, :userID)
    end
end
