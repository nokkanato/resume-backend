class Api::V1::UsersController < ApplicationController
  respond_to :json

  def show
    respond_with User.find(params[:id])
  end


  def create
   user=User.new(user_params)
        # if the user is saved successfully than respond with json data and status code 201
   if user.save
    render json: user, status: 201
   else
    render json: { errors: user.errors}, status: 422
   end
  end

  def login
    user = User.find_by_email(params[:user][:email])
    if user.valid_password?(params[:user][:password])
      render json: { success: true }, json: user.id
    else
      render json: { success: false }, status: :unauthorized
    end
  end




  private
  def user_params
   params.require(:user).permit(:email, :password, :password_confirmation)
        end
end
