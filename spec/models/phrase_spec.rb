require 'rails_helper'

RSpec.describe Phrase, type: :model do
  context 'validations' do
    it { should validate_presence_of(:body) }
    it { should validate_presence_of(:yandex_translation) }
    it { should validate_presence_of(:subject) }
    it { should validate_presence_of(:focus) }

    it { should validate_uniqueness_of(:body) }
  end
  context 'relationships' do
    it { should belong_to(:language) }
    it { should have_many(:translations) }
  end
end
