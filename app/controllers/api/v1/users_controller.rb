class Api::V1::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    render json: @user.to_json(include: {appointments: {
                                          include: { service: {
                                              only: %i[id category petService serviceDescription servicePrice]
                                            } },
                                            only: %i[id date service_id user_id created_at]
                                        }})
                 
                  
  end

  def create
    @user = User.create!(user_params)
    render json: @user
  end

  private

  def user_params
    params.permit(:username, :password, :password_confirmation)
  end
end