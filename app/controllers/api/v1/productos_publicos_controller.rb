class Api::V1::ProductosPublicosController <ApplicationController
 skip_before_filter :verify_authenticity_token
 def index
   @carrito = Cardpublico.where(:pedidoID => params[:pedido]).pluck(:precio)
   carrito = @carrito.map do |b|
    b.to_f
   end
   render json: carrito.reduce(0, :+)
   #render json: @carrito
  end
end