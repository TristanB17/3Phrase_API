require 'rails_helper'

RSpec.describe Language, type: :model do
  context 'validations' do
    it { should validate_presence_of(:lang_name) }
    it { should validate_presence_of(:abbreviation) }
  end
  context 'relationships' do
    it { should have_many(:user_languages) }
    it { should have_many(:users).through(:user_languages) }
  end
end
