class PedidoPublicosController < ApplicationController
  before_action :set_pedido_publico, only: [:show, :edit, :update, :destroy]

  # GET /pedido_publicos
  # GET /pedido_publicos.json
  def index
    @pedido_publicos = PedidoPublico.all
  end
  def advertencia
    
  end
  # GET /pedido_publicos/1
  # GET /pedido_publicos/1.json
  def show
  end

  # GET /pedido_publicos/new
  def new
    @pedido_publico = PedidoPublico.new
  end

  # GET /pedido_publicos/1/edit
  def edit
  end

  # POST /pedido_publicos
  # POST /pedido_publicos.json
  def create
    @pedido_publico = PedidoPublico.new(pedido_publico_params)

    respond_to do |format|
      if @pedido_publico.save
        format.html { redirect_to "/carpublico?pedidoID=#{@pedido_publico.id}", notice: 'Pedido publico was successfully created.' }
        format.json { render :show, status: :created, location: @pedido_publico }
      else
        format.html { render :new }
        format.json { render json: @pedido_publico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedido_publicos/1
  # PATCH/PUT /pedido_publicos/1.json
  def update
    respond_to do |format|
      if @pedido_publico.update(pedido_publico_params)
        format.html { redirect_to @pedido_publico, notice: 'Pedido publico was successfully updated.' }
        format.json { render :show, status: :ok, location: @pedido_publico }
      else
        format.html { render :edit }
        format.json { render json: @pedido_publico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedido_publicos/1
  # DELETE /pedido_publicos/1.json
  def destroy
    @pedido_publico.destroy
    respond_to do |format|
      format.html { redirect_to pedido_publicos_url, notice: 'Pedido publico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido_publico
      @pedido_publico = PedidoPublico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedido_publico_params
      params.require(:pedido_publico).permit(:codigopromocional,:pedido, :fecha, :nombre, :correo, :telefono, :direccion,:calles,:municipio,:codigopostal,:rfc,:razonsocial,:direccionfiscal,:municipiofiscal,:codigopostalfiscal)
    end
end
