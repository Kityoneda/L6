class CartItemsController < ApplicationController
  def new
    @cartitem = CartItem.new(product_id: params[:product_id])
  end

  def create
    @cartitem = CartItem.new(qty: params[:cart_item][:qty],
    product_id: params[:cart_item][:product_id], cart_id: current_cart.id)

    if @cartitem.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @cartitem = CartItem.find(params[:id])
    @cartitem.destroy
    redirect_to root_path
  end
end
