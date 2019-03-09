class Company < ApplicationRecord
  enum com_type: { production: 0, animation_company: 1 }

  mount_uploader :image, ImageUploader

  validates :name, presence: true
  validates :name, length: { maximum: 30 }
  validate :validate_name_not_including_comma

  has_secure_password

  has_many :users
  has_many :ankens

  private

  def validate_name_not_including_comma
    errors.add(:name, 'にカンマを含めることはできません') if name&.include?(',')
  end
end
