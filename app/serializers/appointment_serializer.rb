class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :service_id, :date, :time

  belongs_to :user, class_name: 'User'
  belongs_to :service, class_name: 'Service'
end
