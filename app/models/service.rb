class Service < ApplicationRecord
  has_many :appointments, dependent: :destroy

  has_many :appointments
  has_many :users, through: :appointments

  validates_presence_of :category,
                        :petService,
                        :serviceDescription,
                        :servicePrice
end
