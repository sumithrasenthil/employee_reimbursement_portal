class Bill < ApplicationRecord
  belongs_to :employee

  validates :amount, presence: true
  enum category: { food: 0, travel: 1, others: 2 }

end
