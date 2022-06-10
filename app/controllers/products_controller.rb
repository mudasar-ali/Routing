class ProductsController < ApplicationController
  def create
    @shop = Shop.find(params[:shop_id])
    @product = @shop.products.create(product_params)
    redirect_to shop_path(params[:shop_id])
  end

  def edit
    @shop = Shop.find(params[:shop_id])
    @product=@shop.products.find(params[:id])


  end

  def update
    @shop = Shop.find(params[:shop_id])
    @product = @shop.products.find(params[:id])

    if @product.update(product_params)
      redirect_to @shop
    else
      render 'edit'
    end
  end

  def destroy
    @shop = Shop.find(params[:shop_id])
    @product = @shop.products.find(params[:id])
    @product.destroy
    redirect_to shop_path
  end
  private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
