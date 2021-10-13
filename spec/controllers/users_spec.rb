require 'rails_helper'

describe 'create', type: :request do
  before do
    post '/api/v1/users', params: {
      username: 'railon',
      password: 'Abcd1234',
      password_confirmation: 'Abcd1234'
    }
  end

  it 'return info of created user' do
    data = JSON.parse(response.body)
    expect(data['username']).to eq('railon')
  end
end



