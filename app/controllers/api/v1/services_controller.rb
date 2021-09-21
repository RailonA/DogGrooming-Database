class Api::V1::ServicesController < ApplicationController
  skip_before_action :authorized

  def index
    @services = Service.all
    render json: @services
  end


end
