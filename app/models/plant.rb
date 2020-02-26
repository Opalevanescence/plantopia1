class Plant < ApplicationRecord
  belongs_to :user
  has_many :transactions

  validates :name, presence: true
  validates :category, presence: true,  inclusion: { in: ['tree', 'flower', 'bush', 'cactus'] }
  validates :price, presence: true

  include PgSearch
  pg_search_scope :global_search,
    against: [:name],
    using: {
      tsearch: { prefix: true }
    }
end
