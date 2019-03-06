require 'rails_helper'

RSpec.describe 'user endpoints' do
  context 'GET api/v1/users/:id/translations' do
    before :each do
      @user = create(:user)
      sign_in(@user)
    end
    
  end
end
