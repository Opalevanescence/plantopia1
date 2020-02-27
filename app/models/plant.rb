class Plant < ApplicationRecord
  belongs_to :user
  has_many :transactions

  validates :name, presence: true
  validates :category, presence: true,  inclusion: { in: ['tree', 'flower', 'bush', 'cactus'] }
  validates :price, presence: true

  include PgSearch::Model
    pg_search_scope :search_by_name_and_description,
      against: [ :name, :description ],
      using: {
        tsearch: { prefix: true } # <-- now `superman batm` will return something!
      }
end
