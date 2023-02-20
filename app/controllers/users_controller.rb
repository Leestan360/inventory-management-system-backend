class UsersController < ApplicationController

  skip_before_action :authorize, only: [:create, :index]

  def profile
      render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end
  
  def create
      @user = User.create!(user_params)
      # if @user.valid?
      @token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
      # else
      #   render json: { error: 'failed to create user' }, status: :unprocessable_entity
      # end
  end

  def index
      users = User.all
      render json: users, status: :ok
  end

#   def destroy
#     user = User.find(params[:id])
#     user.delete
#     head :no_content
#   end


  private

  wrap_parameters :user, include: [:name, :email, :password, :password_confirmation]

  def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
end
