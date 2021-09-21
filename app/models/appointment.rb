class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :service

  validates :date, presence: true
  validates :service, presence: true
end
