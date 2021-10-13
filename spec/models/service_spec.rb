require 'rails_helper'

RSpec.describe Service, type: :model do
  let(:service) do
    Service.new(
      petService: 'Title',
      category: 'Category',
      serviceDescription: 'description',
      servicePrice: 'cost'
    )
  end

  it 'is valid with valid attributes' do
    expect(service).to be_valid
  end

  it 'is not valid without petService' do
    service.petService = nil
    expect(service).to_not be_valid
  end

  it 'is not valid without description' do
    service.serviceDescription = nil
    expect(service).to_not be_valid
  end

  describe 'Associations' do
    it { should have_many(:appointments) }
    it { should have_many(:users) }
  end
end
