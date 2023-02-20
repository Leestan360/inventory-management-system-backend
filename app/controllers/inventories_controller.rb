class InventoriesController < ApplicationController

  skip_before_action :authorize, only: [:create, :index]

  def create
    inventory = Inventory.create!(inventory_params)
    render json: inventory, status: :created
  end

  private

  def inventory_params
    params.require(:inventory).permit(:product_name, :product_id, :category, :buying_price, :quantity, :unit, :expiry_date, :threshold_value)
  end

end
