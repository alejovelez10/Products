class ProductsController < ApplicationController
  def index
  	@products = Product.all
  end

  def new
  	@product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    end
  end

   def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      redirect_to products_path
    end

  end

   def product_params
      params.require(:product).permit(:name, :price, :category_ids => [])
    end
end
