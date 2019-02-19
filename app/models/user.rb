class User < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 30 }
  validates :job_category, presence: true
end
