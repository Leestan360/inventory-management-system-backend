class OrdersController < ApplicationController

  skip_before_action :authorize, only: [:create, :index]

  # Create a new order
  def create
    order = Order.create!(order_params)
    render json: order, status: :created
  end

  # Get all orders
  def index
    render json: Order.all, status: :ok
  end

  private

  def order_params
    params.require(:order).permit(:product_name, :category, :order_value, :quantity, :unit, :buying_price, :date_of_delivery, :inventory_id)
  end
  
end
