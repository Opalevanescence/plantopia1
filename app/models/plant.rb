class Plant < ApplicationRecord
  belongs_to :user
  has_many :transactions

  validates :name, presence: true
  validates :category, presence: true,  inclusion: { in: ['tree', 'flower', 'bush', 'cactus'] }
  validates :price, presence: true
end
