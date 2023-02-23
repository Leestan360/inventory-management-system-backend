class AuthsController < ApplicationController

  skip_before_action :authorize, only: [:create]

  def create
    @user = User.find_by(email: user_login_params[:email])
    if @user && @user.authenticate(user_login_params[:password])
      token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: token, message: 'Logged in successfully' }, status: :accepted
    else
      render json: { message: 'Invalid email or password!' }, status: :unauthorized
    end
  end

  def destroy
    @user = User.find(params[:id])
  end

  private

  def user_login_params
    params.require(:auth).permit(:email, :password)
  end
  
end
