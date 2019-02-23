require 'rails_helper'

RSpec.describe Translation, type: :model do
  context 'validations' do
    it { should validate_presence_of(:output) }
    it { should validate_presence_of(:likes) }
  end
  context 'relationships' do
    it { should belong_to(:phrase) }
    it { should belong_to(:user) }
    it { should have_many(:comments) }
  end
end
