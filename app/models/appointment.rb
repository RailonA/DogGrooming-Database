class Appointment < ApplicationRecord
  # HAS_MANY Dates
  belongs_to :user, class_name: 'User'
  belongs_to :service, class_name: 'Service'
end
