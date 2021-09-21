class Api::V1::AppointmentsController < ApplicationController
  before_action :authenticate, only: [:create]

  def index
    @appointments = Appointment.all
    render json: @appointments
  end

  def create
    @appointment = Appointments.create!(appointment_params)
    render json: @appointment
  end

  private

  def appointment_params
    params.permit(:service_id, :user_id, :date)
  end
end
