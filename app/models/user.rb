class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, :case_sensitive => false

  validates_format_of :email,:with => Devise::email_regexp
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable,
          :registerable,
          :recoverable,
          :rememberable,
          :validatable,
          :jwt_authenticatable,
          jwt_revocation_strategy: JWTBlacklist

  has_many :user_languages
  has_many :languages, through: :user_languages
end
