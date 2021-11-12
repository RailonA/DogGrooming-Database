class Api::V1::AppointmentsController < ApplicationController
  before_action :authenticate, only: [:create]

  def index
    @appointments = Appointment.all
    render json: @appointments
  end

  def create
    @appointment = Appointment.create!(appointment_params)
    render json: @appointment
  end

  private

  def appointment_params
    params.permit(:user_id, :service_id, :date, :time)
  end
end
