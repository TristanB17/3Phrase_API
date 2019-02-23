class Translation < ApplicationRecord
  validates :output, presence: true
  validates :likes, presence: true

  belongs_to :user
  belongs_to :phrase
  has_many :comments
end
