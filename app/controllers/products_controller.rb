class ProductsController < AuthController
  # allow_unauthenticated_access

  layout "auth"
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end
end
