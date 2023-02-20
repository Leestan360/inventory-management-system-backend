class InventoriesController < ApplicationController

  skip_before_action :authorize, only: [:create, :index]

  # Create a new inventory
  def create
    inventory = Inventory.create!(inventory_params)
    render json: inventory, status: :created
  end

  # Get all inventories
  def index
    render json: Inventory.all, status: :ok
  end

  private

  # Params for creating a new inventory
  def inventory_params
    params.require(:inventory).permit(:product_name, :product_id, :category, :buying_price, :quantity, :unit, :expiry_date, :threshold_value)
  end

end
