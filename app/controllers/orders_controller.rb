class OrdersController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    current_user.last_cart.orders << Order.new(user_id:current_user.id, price: @product.price, product: @product)

    if current_user.last_cart.save
      redirect_to products_path, notice: "La orden ha sido guardada"
    else
      redirect_to products_path, alert: "La orden no ha podido ser guardada"
    end
  end
end
