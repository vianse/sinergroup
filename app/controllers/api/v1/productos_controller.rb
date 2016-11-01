class Api::V1::ProductosController <ApplicationController
 skip_before_filter :verify_authenticity_token
 def index
  @carrito = Car.where(:pedidoID => params[:pedido]).pluck(:productoID)
  
   @productos = Product.select(:costo,:descripcion).where(:descripcion => @carrito)
   productos = @productos.map do |b|
    @cantidad = Car.where(:productoID => b.descripcion).where(:pedidoID =>params[:pedido]).pluck(:cantidad).first
    b.costo.to_f * @cantidad.to_f
    #b.costo.to_f #* @cantidad.to_f
    
   end
   
   render json: productos.reduce(0, :+)
   
 end
end