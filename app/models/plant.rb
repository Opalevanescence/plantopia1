class Plant < ApplicationRecord
  belongs_to :user
  has_many :transactions

  has_one_attached :photo
  validates :name, presence: true
  validates :category, presence: true,  inclusion: { in: ['tree', 'flower', 'bush', 'cactus'] }
  validates :price, presence: true
end
