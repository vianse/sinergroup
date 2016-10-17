class Api::V1::ProductosController <ApplicationController
 skip_before_filter :verify_authenticity_token
 def index
   @productos = Product.all
   render json: @productos
 end
end