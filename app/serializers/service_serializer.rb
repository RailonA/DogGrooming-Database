class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :category, :petService, :serviceDescription, :servicePrice

  has_many :appointments
  has_many :users, through: :appointments

end
