class ControlController < ApplicationController
  def index
  	if admin_signed_in?
  		redirect_to "/products"
  	else
  		redirect_to "/inicio"
  	end
  end
end
