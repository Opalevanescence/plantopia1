class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :transactions
  has_many :plants, dependent: :destroy
  has_many :bought_plants, through: :transactions, source: :plant


  validates :username, presence: true, uniqueness: true, length: { in: 5..30 }
  # Eventually, username should validate that it's an email address
  validates :password, presence: true, length: { in: 5..20 }

  def sold_plants
    plants.map{|p| p.transactions }.flatten.reject{|t| t.user == self}
  end
end
