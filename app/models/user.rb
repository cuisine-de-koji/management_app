class User < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 30 }
  validates :sex, presence: true
  belongs_to :company
  has_one :keirekisyo

  enum sex: { man: 1, woman: 2 }
end
