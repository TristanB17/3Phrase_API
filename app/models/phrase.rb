class Phrase < ApplicationRecord
  validates :body, presence: true, uniqueness: true
  validates :yandex_translation, presence: true
  validates :subject, presence: true
  validates :focus, presence: true

  belongs_to :language
  has_many :translations, dependent: :destroy
end
