class Api::V1::ProductosPublicosController <ApplicationController
 skip_before_filter :verify_authenticity_token
 def index
   @carrito = Cardpublico.where(:pedidoID => params[:pedido]).pluck(:precio)
   carrito = @carrito.map do |b|
    b[1..3].to_i
   end
   render json: carrito.reduce(0, :+)
  end
end