class User < ApplicationRecord
  has_many :transactions
  has_many :plants

  validates :username, presence: true, uniqueness: true, length: { in: 5..30 }
  # Eventually, username should validate that it's an email address
  validates :password, presence: true, length: { in: 5..20 }
end
