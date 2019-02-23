require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'validations' do
    it { should validate_presence_of(:body) }
    it { should validate_presence_of(:likes) }
  end
  context 'relationships' do
    it { should belong_to(:translation) }
  end
end
