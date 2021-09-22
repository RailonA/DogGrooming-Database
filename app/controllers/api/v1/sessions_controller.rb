class Api::V1::SessionsController < ApplicationController
  skip_before_action :authenticate, only: [:create], raise: false


  def create
    command = AuthenticateUser.call(params[:username], params[:password])

    if command.success?
      render json: { auth_token: command.result }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end
end