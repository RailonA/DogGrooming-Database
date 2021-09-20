class Service < ApplicationRecord
    validates_presence_of :category, :petService, :serviceDescription, :servicePrice
end
