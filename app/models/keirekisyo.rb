class Keirekisyo < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 30 }

  belongs_to :user
end