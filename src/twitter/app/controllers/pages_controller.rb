class PagesController < ApplicationController
  def index
  end

  def about
  	@products = ["Producto1", "Producto2", "Producto3", "Producto4", "Producto5"]
  end

  def indexIntegral
  end
end
