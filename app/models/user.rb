class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 5, maximum: 20 }
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Email invalid"  }
  validates :password, presence: true
end
