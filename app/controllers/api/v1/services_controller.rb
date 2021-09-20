class Api::V1::ServicesController < ApplicationController
  def index
    services = Service.all
    render json: { services: services }, status: 200
  end
end
