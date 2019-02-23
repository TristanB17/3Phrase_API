class Language < ApplicationRecord
  validates_presence_of :lang_name,
                        :abbreviation
  has_many :user_languages
  has_many :users, through: :user_languages
end
