require 'rails_helper'

describe 'Check if service are received', type: :request do
  it 'return service with 1st trip name "Title"' do
    Service.create(
      petService: 'Title',
      category: 'dog',
      serviceDescription: 'description',
      servicePrice: 'cost',
     
    )
    get '/api/v1/services'
    data = JSON.parse(response.body)
    expect(data[0]['petService']).to eq('Title')
  end
end
