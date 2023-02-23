class SuppliersController < ApplicationController

  # skip_before_action :authorize, only: [:create, :index]

  # Create a new supplier
  def create
    supplier = Supplier.create!(supplier_params)
    render json: supplier, status: :created
  end

  # Get all suppliers
  def index
    render json: Supplier.all, status: :ok
  end

  private

  # Params for creating a supplier
  def supplier_params
    params.require(:supplier).permit(:supplier_name, :product, :category, :buying_price, :contact_number, :delivery_status, :email)
  end

end
