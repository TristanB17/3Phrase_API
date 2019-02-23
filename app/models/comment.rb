class Comment < ApplicationRecord
  validates :body, presence: true
  validates :likes, presence: true

  belongs_to :translation
end
