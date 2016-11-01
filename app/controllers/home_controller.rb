class HomeController < ApplicationController
	before_action :authenticate_user!
  def index
    @condicion = Condicion.new
  	@condiciones = Condicion.where(:userID => current_user.id).pluck(:leido).first
  	if @condiciones == "1" 
  		redirect_to "/pedidos"
  	else
  		redirect_to "/reglas"
  	end
  end
  def recomendaciones
    @recomendacion = Recomendacion.new
  	@recomendaciones = Recomendacion.where(:userID => current_user.id).pluck(:leido).first
  	if @recomendaciones == "1" 
  		redirect_to "/pedidos"
  	else
  		
  	end	
  end
  def condiciones
    @condicion = Condicion.new
  end
  
end
