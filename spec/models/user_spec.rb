require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }

    it { should validate_uniqueness_of(:username) }
    it { should validate_uniqueness_of(:email).case_insensitive }
  end
  context 'relationships' do
    it { should have_many(:user_languages) }
    it { should have_many(:languages).through(:user_languages) }
  end
end
