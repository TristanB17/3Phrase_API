require 'rails_helper'

RSpec.describe 'POST /signup', type: :request do
  example_username = 'newguy'
  example_email = 'newguy@gmail.com'
  example_password = '12345678'
  let(:url) { '/signup' }
  let(:params) do
    {
      user: {
        username: example_username,
        email: example_email,
        password: example_password
      }
    }
  end

  context 'when user is unauthenticated' do
    before { post url, params: params }

    it 'returns 200' do
      expect(response.status).to eq 200
    end

    it 'returns a new user' do
      parsed = JSON.parse(response.body)
      expect(parsed['username']).to eq(example_username)
      expect(parsed['email']).to eq(example_email)

      expect(User.last.username).to eq(example_username)
      expect(User.last.email).to eq(example_email)
    end
  end

  context 'when user already exists' do
    before do
      create(:user, email: params[:user][:email])
      post url, params: params
    end

    it 'returns bad request status' do
      expect(response.status).to eq 400
    end

    it 'returns validation errors' do
      parsed = JSON.parse(response.body)
      expect(parsed['errors'].first['title']).to eq('Bad Request')
    end
  end
end
